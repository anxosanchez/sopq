{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "2ace9aa0-4a52-46a6-a32c-d237684e2a6d",
   "metadata": {},
   "outputs": [],
   "source": [
    "global Cao Cbo Kci Kcii Kciii vector_c\n",
    "\n",
    "% definímo-las constantes\n",
    "Cao = 1.5; Cbo=1.5; Kci= 1.06; Kcii= 2.63; Kciii= 5;\n",
    "\n",
    "function f = funcion_problema_4(vector_c)\n",
    "    global Cao Cbo Kci Kcii Kciii\n",
    "    % vector_c son as concentracións das sete especies.\n",
    "    % vector_c(1) é a concentración da especie a,\n",
    "    % vector_c(2) é a concentración de b etc.\n",
    "\n",
    "    f(1)= vector_c(3)*vector_c(4)-Kci*vector_c(1)*vector_c(2);\n",
    "    f(2)= vector_c(6)*vector_c(5)-Kcii*vector_c(2)*vector_c(3);\n",
    "    f(3)= vector_c(7)- Kciii*vector_c(1)*vector_c(5);\n",
    "    f(4)= Cao - vector_c(1) - vector_c(4) - vector_c(7);\n",
    "    f(5)= Cbo - vector_c(2) - vector_c(4) - vector_c(6);\n",
    "    f(6)= vector_c(4) - vector_c(6) - vector_c(3);\n",
    "    f(7)= vector_c(6) - vector_c(5)- vector_c(7);\n",
    "endfunction"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "4f29efba-d3d9-4688-b1eb-6f275043fb32",
   "metadata": {},
   "source": [
    "## Parte a"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "id": "8fbe46a6-7a47-442e-8045-e11b18ce8bef",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "y =\n",
      "\n",
      "   0.4207   0.2429   0.1536   0.7053   0.1778   0.5518   0.3740\n",
      "\n"
     ]
    }
   ],
   "source": [
    "% Estimación inicial e tolerancia\n",
    "% Quitá-los comentarios en función da estimación inicial desexada\n",
    "vector_c=[1.5 1.5 0 0 0 0 0]; \t\t\t\t% Estimación inicial, parte a\n",
    "%vector_c=[-.5 -1.5 -1 1 1 2 1];  \t\t\t% Estimación inicial, parte b\n",
    "%vector_c=[-18.5 -28.5 -10 10 10 20 10]; \t% Estimación inicial, parte c\n",
    "estimacion=vector_c;\n",
    "\n",
    "% Chamamos á función de Matlab fsolve\n",
    "y = fsolve('funcion_problema_4',estimacion)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6d7224b8-1ac5-43a7-9ec6-a731c76706b2",
   "metadata": {},
   "source": [
    "## Parte b"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 8,
   "id": "12e8103a-3787-418a-be06-ee6f8c790591",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "y =\n",
      "\n",
      "   0.362370  -0.234849  -1.623737   0.055556   0.597220   1.679293   1.082074\n",
      "\n"
     ]
    }
   ],
   "source": [
    "% Segundo apartado\n",
    "% Quitá-los comentarios en función da estimación inicial desexada\n",
    "%vector_c=[1.5 1.5 0 0 0 0 0]; \t\t\t\t% Estimación inicial, parte a\n",
    "vector_c=[-.5 -1.5 -1 1 1 2 1];  \t\t\t% Estimación inicial, parte b\n",
    "%vector_c=[-18.5 -28.5 -10 10 10 20 10]; \t% Estimación inicial, parte c\n",
    "\n",
    "estimacion=vector_c;\n",
    "\n",
    "% Chamamos á función de Matlab fsolve\n",
    "y = fsolve('funcion_problema_4',estimacion)\n",
    "% Hai un valor negativo, logo non ten sentido físico a solución. NON VALE!."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "47c0f751-a8e9-4579-983b-3eb9b1c73ba9",
   "metadata": {},
   "source": [
    "## Parte c"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 9,
   "id": "5c682355-4a4a-401b-a788-056b29772ac4",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "y =\n",
      "\n",
      "  -0.7006  -0.3779   0.2623   1.0701  -0.3227   0.8078   1.1305\n",
      "\n"
     ]
    }
   ],
   "source": [
    "% Quitá-los comentarios en función da estimación inicial desexada\n",
    "%vector_c=[1.5 1.5 0 0 0 0 0]; \t\t\t\t% Estimación inicial, parte a\n",
    "%vector_c=[-.5 -1.5 -1 1 1 2 1];  \t\t\t% Estimación inicial, parte b\n",
    "vector_c=[-18.5 -28.5 -10 10 10 20 10]; \t% Estimación inicial, parte c\n",
    "\n",
    "estimacion=vector_c;\n",
    "\n",
    "% Chamamos á función de Matlab fsolve\n",
    "y = fsolve('funcion_problema_4',estimacion)\n",
    "% Hai varios valores negativo, logo non ten sentido físico a solución. NON VALE!."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "c8466e8e-a057-477b-ab8b-88665f81f638",
   "metadata": {},
   "outputs": [],
   "source": []
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "Octave",
   "language": "octave",
   "name": "octave"
  },
  "language_info": {
   "file_extension": ".m",
   "help_links": [
    {
     "text": "GNU Octave",
     "url": "https://www.gnu.org/software/octave/support.html"
    },
    {
     "text": "Octave Kernel",
     "url": "https://github.com/Calysto/octave_kernel"
    },
    {
     "text": "MetaKernel Magics",
     "url": "https://metakernel.readthedocs.io/en/latest/source/README.html"
    }
   ],
   "mimetype": "text/x-octave",
   "name": "octave",
   "version": "6.1.1~hg.2021.01.26"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
