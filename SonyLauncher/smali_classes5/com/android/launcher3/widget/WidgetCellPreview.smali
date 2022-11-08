.class public Lcom/android/launcher3/widget/WidgetCellPreview;
.super Landroid/widget/FrameLayout;
.source "WidgetCellPreview.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/widget/WidgetCellPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/widget/WidgetCellPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method


# virtual methods
.method public getPreviewLayout()Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    .locals 2

    .line 64
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetCellPreview;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 65
    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetCellPreview;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetCellPreview;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    return-object v1

    .line 64
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasPreviewLayout()Z
    .locals 2

    .line 50
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetCellPreview;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 51
    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetCellPreview;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v1, :cond_0

    .line 52
    const/4 v1, 0x1

    return v1

    .line 50
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 44
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 45
    const/4 v0, 0x1

    return v0
.end method
