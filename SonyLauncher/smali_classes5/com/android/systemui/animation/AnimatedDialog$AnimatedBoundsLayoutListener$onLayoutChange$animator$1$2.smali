.class final Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener$onLayoutChange$animator$1$2;
.super Ljava/lang/Object;
.source "DialogLaunchAnimator.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "animatedValue",
        "Landroid/animation/ValueAnimator;",
        "kotlin.jvm.PlatformType",
        "onAnimationUpdate"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $bottom:I

.field final synthetic $bounds:Landroid/graphics/Rect;

.field final synthetic $left:I

.field final synthetic $right:I

.field final synthetic $startBottom:I

.field final synthetic $startLeft:I

.field final synthetic $startRight:I

.field final synthetic $startTop:I

.field final synthetic $top:I

.field final synthetic $view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/graphics/Rect;IIIIIIIILandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener$onLayoutChange$animator$1$2;->$bounds:Landroid/graphics/Rect;

    iput p2, p0, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener$onLayoutChange$animator$1$2;->$startLeft:I

    iput p3, p0, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener$onLayoutChange$animator$1$2;->$left:I

    iput p4, p0, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener$onLayoutChange$animator$1$2;->$startTop:I

    iput p5, p0, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener$onLayoutChange$animator$1$2;->$top:I

    iput p6, p0, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener$onLayoutChange$animator$1$2;->$startRight:I

    iput p7, p0, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener$onLayoutChange$animator$1$2;->$right:I

    iput p8, p0, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener$onLayoutChange$animator$1$2;->$startBottom:I

    iput p9, p0, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener$onLayoutChange$animator$1$2;->$bottom:I

    iput-object p10, p0, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener$onLayoutChange$animator$1$2;->$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animatedValue"    # Landroid/animation/ValueAnimator;

    .line 850
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 853
    .local v0, "progress":F
    iget-object v1, p0, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener$onLayoutChange$animator$1$2;->$bounds:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener$onLayoutChange$animator$1$2;->$startLeft:I

    iget v3, p0, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener$onLayoutChange$animator$1$2;->$left:I

    invoke-static {v2, v3, v0}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result v2

    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 854
    iget-object v1, p0, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener$onLayoutChange$animator$1$2;->$bounds:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener$onLayoutChange$animator$1$2;->$startTop:I

    iget v3, p0, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener$onLayoutChange$animator$1$2;->$top:I

    invoke-static {v2, v3, v0}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result v2

    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 855
    iget-object v1, p0, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener$onLayoutChange$animator$1$2;->$bounds:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener$onLayoutChange$animator$1$2;->$startRight:I

    iget v3, p0, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener$onLayoutChange$animator$1$2;->$right:I

    invoke-static {v2, v3, v0}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result v2

    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 856
    iget-object v1, p0, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener$onLayoutChange$animator$1$2;->$bounds:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener$onLayoutChange$animator$1$2;->$startBottom:I

    iget v3, p0, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener$onLayoutChange$animator$1$2;->$bottom:I

    invoke-static {v2, v3, v0}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result v2

    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 859
    iget-object v1, p0, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener$onLayoutChange$animator$1$2;->$view:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener$onLayoutChange$animator$1$2;->$bounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setLeft(I)V

    .line 860
    iget-object v1, p0, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener$onLayoutChange$animator$1$2;->$view:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener$onLayoutChange$animator$1$2;->$bounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setTop(I)V

    .line 861
    iget-object v1, p0, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener$onLayoutChange$animator$1$2;->$view:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener$onLayoutChange$animator$1$2;->$bounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setRight(I)V

    .line 862
    iget-object v1, p0, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener$onLayoutChange$animator$1$2;->$view:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener$onLayoutChange$animator$1$2;->$bounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBottom(I)V

    .line 863
    return-void
.end method
