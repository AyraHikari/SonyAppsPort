.class Lcom/android/launcher3/pageindicators/PageIndicatorDots$MyOutlineProver;
.super Landroid/view/ViewOutlineProvider;
.source "PageIndicatorDots.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/pageindicators/PageIndicatorDots;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOutlineProver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$MyOutlineProver;->this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/pageindicators/PageIndicatorDots;Lcom/android/launcher3/pageindicators/PageIndicatorDots$MyOutlineProver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/pageindicators/PageIndicatorDots$MyOutlineProver;-><init>(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .line 306
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$MyOutlineProver;->this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    invoke-static {v0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->-$$Nest$fgetmEntryAnimationRadiusFactors(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)[F

    move-result-object v0

    if-nez v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$MyOutlineProver;->this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    invoke-static {v0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->-$$Nest$mgetActiveRect(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)Landroid/graphics/RectF;

    move-result-object v0

    .line 308
    .local v0, "activeRect":Landroid/graphics/RectF;
    iget v1, v0, Landroid/graphics/RectF;->left:F

    float-to-int v3, v1

    iget v1, v0, Landroid/graphics/RectF;->top:F

    float-to-int v4, v1

    iget v1, v0, Landroid/graphics/RectF;->right:F

    float-to-int v5, v1

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v1

    iget-object v1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$MyOutlineProver;->this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    invoke-static {v1}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->-$$Nest$fgetmDotRadius(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)F

    move-result v7

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 316
    .end local v0    # "activeRect":Landroid/graphics/RectF;
    :cond_0
    return-void
.end method
