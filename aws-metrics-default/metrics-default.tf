resource "aws_cloudwatch_metric_alarm" "main" {
    alarm_name = "monitoracao-servico-recurso-aplicacao"
    alarm_description = "descricao-do-alarme-servico"

    namespace = "AWS/EC2"
    metric_name = "CPUUtilization"
    statistic = "Average"

    period = 350 #5 minutos
    evaluation_periods = 3
    comparison_operator = "GreaterThanOrEqualToThreshold"
}