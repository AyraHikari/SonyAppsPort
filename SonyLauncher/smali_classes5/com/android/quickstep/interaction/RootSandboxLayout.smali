.class public Lcom/android/quickstep/interaction/RootSandboxLayout;
.super Landroid/widget/RelativeLayout;
.source "RootSandboxLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method


# virtual methods
.method public getFullscreenHeight()I
    .locals 3

    .line 51
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/RootSandboxLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 53
    .local v0, "insets":Landroid/graphics/Insets;
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/RootSandboxLayout;->getHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Insets;->top:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Insets;->bottom:I

    add-int/2addr v1, v2

    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 43
    invoke-static {p0}, Landroidx/fragment/app/FragmentManager;->findFragment(Landroid/view/View;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/interaction/TutorialFragment;

    .line 44
    invoke-virtual {v0, p1}, Lcom/android/quickstep/interaction/TutorialFragment;->onInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 43
    return v0
.end method
