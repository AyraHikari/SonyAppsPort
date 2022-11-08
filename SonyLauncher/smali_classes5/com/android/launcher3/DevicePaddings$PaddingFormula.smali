.class final Lcom/android/launcher3/DevicePaddings$PaddingFormula;
.super Ljava/lang/Object;
.source "DevicePaddings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/DevicePaddings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PaddingFormula"
.end annotation


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    sget-object v0, Lcom/android/launcher3/R$styleable;->DevicePaddingFormula:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 208
    .local v0, "t":Landroid/content/res/TypedArray;
    sget v1, Lcom/android/launcher3/R$styleable;->DevicePaddingFormula_a:I

    invoke-static {v0, v1}, Lcom/android/launcher3/DevicePaddings$PaddingFormula;->getValue(Landroid/content/res/TypedArray;I)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/DevicePaddings$PaddingFormula;->a:F

    .line 209
    sget v1, Lcom/android/launcher3/R$styleable;->DevicePaddingFormula_b:I

    invoke-static {v0, v1}, Lcom/android/launcher3/DevicePaddings$PaddingFormula;->getValue(Landroid/content/res/TypedArray;I)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/DevicePaddings$PaddingFormula;->b:F

    .line 210
    sget v1, Lcom/android/launcher3/R$styleable;->DevicePaddingFormula_c:I

    invoke-static {v0, v1}, Lcom/android/launcher3/DevicePaddings$PaddingFormula;->getValue(Landroid/content/res/TypedArray;I)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/DevicePaddings$PaddingFormula;->c:F

    .line 212
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 213
    return-void
.end method

.method private static getValue(Landroid/content/res/TypedArray;I)F
    .locals 3
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I

    .line 223
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 224
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 225
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 226
    invoke-virtual {p0, p1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    return v0

    .line 228
    :cond_1
    return v2
.end method


# virtual methods
.method public calculate(I)I
    .locals 3
    .param p1, "extraSpacePx"    # I

    .line 219
    iget v0, p0, Lcom/android/launcher3/DevicePaddings$PaddingFormula;->a:F

    int-to-float v1, p1

    iget v2, p0, Lcom/android/launcher3/DevicePaddings$PaddingFormula;->c:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/DevicePaddings$PaddingFormula;->b:F

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DevicePaddings$PaddingFormula;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DevicePaddings$PaddingFormula;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DevicePaddings$PaddingFormula;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
