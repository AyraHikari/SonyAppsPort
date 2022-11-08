.class Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;
.super Ljava/lang/Object;
.source "DragView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/dragndrop/DragView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpringFloatValue"
.end annotation


# static fields
.field private static final DAMPENING_RATIO:F = 1.0f

.field private static final PARALLAX_MAX_IN_DP:I = 0x8

.field private static final STIFFNESS:I = 0xfa0

.field private static final VALUE:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDelta:F

.field private final mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mValue:F

.field private final mView:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$fgetmValue(Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->mValue:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmView(Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->mView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmValue(Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->mValue:F

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 536
    new-instance v0, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue$1;

    const-string v1, "value"

    invoke-direct {v0, v1}, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->VALUE:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;F)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "range"    # F

    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 562
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->mView:Landroid/view/View;

    .line 563
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->VALUE:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    neg-float v1, p2

    .line 564
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setMaxValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    .line 566
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 567
    const/high16 v2, 0x457a0000    # 4000.0f

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 565
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 568
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->mDelta:F

    .line 569
    return-void
.end method


# virtual methods
.method public animateToPos(F)V
    .locals 3
    .param p1, "value"    # F

    .line 572
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->mDelta:F

    neg-float v2, v1

    invoke-static {p1, v2, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 573
    return-void
.end method
