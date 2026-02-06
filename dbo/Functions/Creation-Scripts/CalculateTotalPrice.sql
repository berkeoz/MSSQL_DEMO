SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION dbo.CalculateTotalPrice
(
    @Price DECIMAL(10, 2),
    @TaxRate DECIMAL(5, 2)
)
RETURNS DECIMAL(10, 2)
AS
BEGIN
    DECLARE @TotalPrice DECIMAL(10, 2)
    
    -- Calculate total price with tax
    SET @TotalPrice = @Price + (@Price * @TaxRate / 100)
    
    RETURN @TotalPrice
END
GO
