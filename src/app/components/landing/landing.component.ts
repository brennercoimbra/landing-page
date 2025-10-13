import { Component } from '@angular/core';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-landing',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './landing.component.html',
  styleUrls: ['./landing.component.scss'],
})
export class LandingComponent {
  // Conteúdo editável pelo dono do site
  tituloSite = 'Consultoria Online<br>Amanda Santtos';
  subtitulo =
    'Transforme seu corpo e sua saúde com acompanhamento profissional personalizado';

  sobreTexto = `

Olá, seja muito bem-vindo(a) à <strong>minha consultoria online</strong>!

Sou <strong>Amanda Santos</strong>, personal trainer, e ajudo pessoas a alcançarem seus objetivos com <strong>treinos seguros, eficientes e totalmente personalizados</strong>.

Durante muito tempo atuei apenas de forma presencial, porque sempre acreditei que uma boa <strong>anamnese</strong> exige escuta, análise e atenção genuína a cada detalhe.

Demorei a migrar para o online justamente por observar o quanto esse espaço, muitas vezes, se distancia do que considero essencial: <strong>cuidado, verdade e individualidade</strong>.

Por isso, construí uma consultoria baseada nos <strong>meus valores</strong>, pensada para oferecer uma <strong>experiência completa, humanizada e de crescimento mútuo</strong>, mesmo à distância.

Aqui, cada treino é elaborado com propósito — e cada passo é acompanhado de perto, com <strong>conhecimento, feedbacks constantes e suporte real</strong>, para que você se sinta <strong>seguro(a), motivado(a) e confiante</strong> em toda a jornada.

Acredito que o corpo e a mente caminham juntos.

Por isso, realizo <strong>chamadas pelo Google Meet</strong>, para te conhecer melhor, entender como está o seu momento emocional e ajustar seu plano de acordo com suas necessidades reais.

Esse é o tipo de consultoria em que acredito: <strong>humana, responsável e verdadeiramente transformadora.</strong>`;

  beneficios = [
    {
      icone: '🎯',
      titulo: 'Treinos Personalizados',
      descricao:
        'Planos de treino adaptados aos seus objetivos e necessidades específicas',
    },
    {
      icone: '📊',
      titulo: 'Acompanhamento Profissional',
      descricao: 'Monitoramento constante do seu progresso.',
    },
    {
      icone: '📋',
      titulo: 'Avaliação Completa',
      descricao:
        'Anamnese detalhada para entender seu histórico e condições de saúde',
    },
    // {
    //   icone: '💪',
    //   titulo: 'Resultados Comprovados',
    //   descricao:
    //     'Metodologia testada e aprovada por centenas de alunos satisfeitos',
    // },
    {
      icone: '🏠',
      titulo: 'Flexibilidade Total',
      descricao:
        'Treine onde e quando quiser, com total flexibilidade de horários',
    },
    {
      icone: '💬',
      titulo: 'Suporte Contínuo',
      descricao: 'Tire suas dúvidas e receba orientações sempre que precisar',
    },
  ];

  /* depoimentos = [
    {
      nome: 'Maria Silva',
      texto:
        'Perdi 15kg em 6 meses com o acompanhamento personalizado. Excelente profissional!',
      estrelas: 5,
    },
    {
      nome: 'João Santos',
      texto: 'Os treinos personalizados fizeram toda a diferença. Recomendo!',
      estrelas: 5,
    },
    {
      nome: 'Ana Costa',
      texto:
        'Finalmente consegui criar uma rotina de exercícios que funciona para mim.',
      estrelas: 5,
    },
  ]; */

  irParaLogin(): void {
    // Since no routing, perhaps alert or do nothing
    alert('Funcionalidade de login não implementada neste projeto standalone.');
  }

  scrollParaSecao(secaoId: string): void {
    const elemento = document.getElementById(secaoId);
    if (elemento) {
      elemento.scrollIntoView({ behavior: 'smooth' });
    }
  }
}
