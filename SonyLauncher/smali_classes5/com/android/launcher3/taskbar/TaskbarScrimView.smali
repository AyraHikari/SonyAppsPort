.class public Lcom/android/launcher3/taskbar/TaskbarScrimView;
.super Landroid/view/View;
.source "TaskbarScrimView.java"


# instance fields
.field private final mRenderer:Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;

.field private mShowScrim:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/taskbar/TaskbarScrimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/taskbar/TaskbarScrimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/taskbar/TaskbarScrimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 49
    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;

    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarScrimView;->mRenderer:Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;

    .line 50
    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarScrimView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 56
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 58
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarScrimView;->mShowScrim:Z

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarScrimView;->mRenderer:Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->draw(Landroid/graphics/Canvas;)V

    .line 61
    :cond_0
    return-void
.end method

.method protected setScrimAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .line 68
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarScrimView;->mShowScrim:Z

    .line 69
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarScrimView;->mRenderer:Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 70
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarScrimView;->invalidate()V

    .line 71
    return-void
.end method
