/*
Title: T2Ti ERP Pegasus                                                                
Description: Table Moor relacionada à tabela [PDV_CONFIGURACAO] 
                                                                                
The MIT License                                                                 
                                                                                
Copyright: Copyright (C) 2021 T2Ti.COM                                          
                                                                                
Permission is hereby granted, free of charge, to any person                     
obtaining a copy of this software and associated documentation                  
files (the "Software"), to deal in the Software without                         
restriction, including without limitation the rights to use,                    
copy, modify, merge, publish, distribute, sublicense, and/or sell               
copies of the Software, and to permit persons to whom the                       
Software is furnished to do so, subject to the following                        
conditions:                                                                     
                                                                                
The above copyright notice and this permission notice shall be                  
included in all copies or substantial portions of the Software.                 
                                                                                
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,                 
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES                 
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND                        
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT                     
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,                    
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING                    
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR                   
OTHER DEALINGS IN THE SOFTWARE.                                                 
                                                                                
       The author may be contacted at:                                          
           t2ti.com@gmail.com                                                   
                                                                                
@author Albert Eije (alberteije@gmail.com)                    
@version 1.0.0
*******************************************************************************/
import 'package:moor/moor.dart';

@DataClassName("PdvConfiguracao")
class PdvConfiguracaos extends Table {
  String get tableName => 'PDV_CONFIGURACAO';

  IntColumn get id => integer().named('ID').autoIncrement()();
  IntColumn get idEcfImpressora => integer().named('ID_ECF_IMPRESSORA').nullable().customConstraint('NULLABLE REFERENCES ECF_IMPRESSORA(ID)')();
  IntColumn get idPdvCaixa => integer().named('ID_PDV_CAIXA').nullable().customConstraint('NULLABLE REFERENCES PDV_CAIXA(ID)')();
  TextColumn get mensagemCupom => text().named('MENSAGEM_CUPOM').withLength(min: 0, max: 250).nullable()();
  TextColumn get portaEcf => text().named('PORTA_ECF').withLength(min: 0, max: 10).nullable()();
  TextColumn get ipServidor => text().named('IP_SERVIDOR').withLength(min: 0, max: 15).nullable()();
  TextColumn get ipSitef => text().named('IP_SITEF').withLength(min: 0, max: 15).nullable()();
  TextColumn get tipoTef => text().named('TIPO_TEF').withLength(min: 0, max: 2).nullable()();
  TextColumn get tituloTelaCaixa => text().named('TITULO_TELA_CAIXA').withLength(min: 0, max: 100).nullable()();
  TextColumn get caminhoImagensProdutos => text().named('CAMINHO_IMAGENS_PRODUTOS').withLength(min: 0, max: 250).nullable()();
  TextColumn get caminhoImagensMarketing => text().named('CAMINHO_IMAGENS_MARKETING').withLength(min: 0, max: 250).nullable()();
  TextColumn get corJanelasInternas => text().named('COR_JANELAS_INTERNAS').withLength(min: 0, max: 20).nullable()();
  TextColumn get marketingAtivo => text().named('MARKETING_ATIVO').withLength(min: 0, max: 1).nullable()();
  IntColumn get cfopEcf => integer().named('CFOP_ECF').nullable()();
  IntColumn get timeoutEcf => integer().named('TIMEOUT_ECF').nullable()();
  IntColumn get intervaloEcf => integer().named('INTERVALO_ECF').nullable()();
  TextColumn get descricaoSuprimento => text().named('DESCRICAO_SUPRIMENTO').withLength(min: 0, max: 20).nullable()();
  TextColumn get descricaoSangria => text().named('DESCRICAO_SANGRIA').withLength(min: 0, max: 20).nullable()();
  IntColumn get tefTipoGp => integer().named('TEF_TIPO_GP').nullable()();
  IntColumn get tefTempoEspera => integer().named('TEF_TEMPO_ESPERA').nullable()();
  IntColumn get tefEsperaSts => integer().named('TEF_ESPERA_STS').nullable()();
  IntColumn get tefNumeroVias => integer().named('TEF_NUMERO_VIAS').nullable()();
  IntColumn get decimaisQuantidade => integer().named('DECIMAIS_QUANTIDADE').nullable()();
  IntColumn get decimaisValor => integer().named('DECIMAIS_VALOR').nullable()();
  IntColumn get bitsPorSegundo => integer().named('BITS_POR_SEGUNDO').nullable()();
  IntColumn get quantidadeMaximaCartoes => integer().named('QUANTIDADE_MAXIMA_CARTOES').nullable()();
  TextColumn get pesquisaParte => text().named('PESQUISA_PARTE').withLength(min: 0, max: 1).nullable()();
  TextColumn get laudo => text().named('LAUDO').withLength(min: 0, max: 10).nullable()();
  DateTimeColumn get dataAtualizacaoEstoque => dateTime().named('DATA_ATUALIZACAO_ESTOQUE').nullable()();
  TextColumn get pedeCpfCupom => text().named('PEDE_CPF_CUPOM').withLength(min: 0, max: 1).nullable()();
  IntColumn get tipoIntegracao => integer().named('TIPO_INTEGRACAO').nullable()();
  IntColumn get timerIntegracao => integer().named('TIMER_INTEGRACAO').nullable()();
  TextColumn get gavetaSinalInvertido => text().named('GAVETA_SINAL_INVERTIDO').withLength(min: 0, max: 1).nullable()();
  IntColumn get gavetaUtilizacao => integer().named('GAVETA_UTILIZACAO').nullable()();
  TextColumn get usaTecladoReduzido => text().named('USA_TECLADO_REDUZIDO').withLength(min: 0, max: 1).nullable()();
  TextColumn get modulo => text().named('MODULO').withLength(min: 0, max: 1).nullable()();
  TextColumn get plano => text().named('PLANO').withLength(min: 0, max: 1).nullable()();
  RealColumn get planoValor => real().named('PLANO_VALOR').nullable()();
  TextColumn get planoSituacao => text().named('PLANO_SITUACAO').withLength(min: 0, max: 1).nullable()();
  TextColumn get reciboFormatoPagina => text().named('RECIBO_FORMATO_PAGINA').withLength(min: 0, max: 2).nullable()();
  TextColumn get encerraMovimentoAuto => text().named('ENCERRA_MOVIMENTO_AUTO').withLength(min: 0, max: 1).nullable()();
  TextColumn get permiteEstoqueNegativo => text().named('PERMITE_ESTOQUE_NEGATIVO').withLength(min: 0, max: 1).nullable()();
}