.class Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;
.super Ljava/lang/Object;
.source "NavbarButtonsViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/NavbarButtonsViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StatePropertyHolder"
.end annotation


# instance fields
.field private final mAnimator:Landroid/animation/ObjectAnimator;

.field private final mDisabledValue:F

.field private final mEnableCondition:Ljava/util/function/IntPredicate;

.field private final mEnabledValue:F

.field private mIsEnabled:Z


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/util/function/IntPredicate;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "enableCondition"    # Ljava/util/function/IntPredicate;

    .line 865
    sget-object v3, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_ALPHA:Landroid/util/FloatProperty;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Ljava/lang/Object;Ljava/util/function/IntPredicate;Landroid/util/Property;FF)V

    .line 866
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/launcher3/anim/AlphaUpdateListener;

    invoke-direct {v1, p1}, Lcom/android/launcher3/anim/AlphaUpdateListener;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 867
    return-void
.end method

.method constructor <init>(Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;Ljava/util/function/IntPredicate;)V
    .locals 6
    .param p1, "alphaProperty"    # Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;
    .param p2, "enableCondition"    # Ljava/util/function/IntPredicate;

    .line 871
    sget-object v3, Lcom/android/launcher3/util/MultiValueAlpha;->VALUE:Landroid/util/FloatProperty;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Ljava/lang/Object;Ljava/util/function/IntPredicate;Landroid/util/Property;FF)V

    .line 872
    return-void
.end method

.method constructor <init>(Lcom/android/quickstep/AnimatedFloat;Ljava/util/function/IntPredicate;)V
    .locals 6
    .param p1, "animatedFloat"    # Lcom/android/quickstep/AnimatedFloat;
    .param p2, "enableCondition"    # Ljava/util/function/IntPredicate;

    .line 875
    sget-object v3, Lcom/android/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Ljava/lang/Object;Ljava/util/function/IntPredicate;Landroid/util/Property;FF)V

    .line 876
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/util/function/IntPredicate;Landroid/util/Property;FF)V
    .locals 3
    .param p2, "enabledCondition"    # Ljava/util/function/IntPredicate;
    .param p4, "enabledValue"    # F
    .param p5, "disabledValue"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/function/IntPredicate;",
            "Landroid/util/Property<",
            "TT;",
            "Ljava/lang/Float;",
            ">;FF)V"
        }
    .end annotation

    .line 879
    .local p1, "target":Ljava/lang/Object;, "TT;"
    .local p3, "property":Landroid/util/Property;, "Landroid/util/Property<TT;Ljava/lang/Float;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 862
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mIsEnabled:Z

    .line 880
    iput-object p2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mEnableCondition:Ljava/util/function/IntPredicate;

    .line 881
    iput p4, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mEnabledValue:F

    .line 882
    iput p5, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mDisabledValue:F

    .line 883
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p4, v1, v2

    aput p5, v1, v0

    invoke-static {p1, p3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 884
    return-void
.end method


# virtual methods
.method public endAnimation()V
    .locals 1

    .line 897
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 900
    :cond_0
    return-void
.end method

.method public setState(I)V
    .locals 5
    .param p1, "flags"    # I

    .line 887
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mEnableCondition:Ljava/util/function/IntPredicate;

    invoke-interface {v0, p1}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v0

    .line 888
    .local v0, "isEnabled":Z
    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mIsEnabled:Z

    if-eq v1, v0, :cond_1

    .line 889
    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mIsEnabled:Z

    .line 890
    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 891
    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mAnimator:Landroid/animation/ObjectAnimator;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mIsEnabled:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mEnabledValue:F

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mDisabledValue:F

    :goto_0
    aput v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 892
    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 894
    :cond_1
    return-void
.end method
