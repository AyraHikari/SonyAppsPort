.class public Lcom/android/launcher3/widget/DeferredAppWidgetHostView;
.super Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
.source "DeferredAppWidgetHostView.java"


# instance fields
.field private final mPaint:Landroid/text/TextPaint;

.field private mSetupTextLayout:Landroid/text/Layout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/DeferredAppWidgetHostView;->setWillNotDraw(Z)V

    .line 45
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/widget/DeferredAppWidgetHostView;->mPaint:Landroid/text/TextPaint;

    .line 46
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 47
    iget-object v2, p0, Lcom/android/launcher3/widget/DeferredAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 48
    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float v2, v2

    .line 49
    invoke-virtual {p0}, Lcom/android/launcher3/widget/DeferredAppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 47
    invoke-static {v0, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 50
    sget v0, Lcom/android/launcher3/R$drawable;->bg_deferred_app_widget:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/DeferredAppWidgetHostView;->setBackgroundResource(I)V

    .line 51
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .line 61
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 87
    iget-object v0, p0, Lcom/android/launcher3/widget/DeferredAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/android/launcher3/widget/DeferredAppWidgetHostView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/widget/DeferredAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 89
    invoke-virtual {p0}, Lcom/android/launcher3/widget/DeferredAppWidgetHostView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/widget/DeferredAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 88
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 90
    iget-object v0, p0, Lcom/android/launcher3/widget/DeferredAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 92
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 65
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->onMeasure(II)V

    .line 67
    invoke-virtual {p0}, Lcom/android/launcher3/widget/DeferredAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 68
    .local v0, "info":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v0, :cond_3

    iget-object v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/DeferredAppWidgetHostView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/DeferredAppWidgetHostView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/widget/DeferredAppWidgetHostView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 74
    .local v1, "availableWidth":I
    if-gtz v1, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/android/launcher3/widget/DeferredAppWidgetHostView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/widget/DeferredAppWidgetHostView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/widget/DeferredAppWidgetHostView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v1, v2, v3

    .line 77
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/widget/DeferredAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/widget/DeferredAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    .line 78
    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 79
    return-void

    .line 81
    :cond_2
    new-instance v10, Landroid/text/StaticLayout;

    iget-object v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/launcher3/widget/DeferredAppWidgetHostView;->mPaint:Landroid/text/TextPaint;

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v2, v10

    move v5, v1

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v10, p0, Lcom/android/launcher3/widget/DeferredAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    .line 83
    return-void

    .line 69
    .end local v1    # "availableWidth":I
    :cond_3
    :goto_0
    return-void
.end method

.method public updateAppWidget(Landroid/widget/RemoteViews;)V
    .locals 0
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;

    .line 56
    return-void
.end method
