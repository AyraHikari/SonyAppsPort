.class public abstract Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;
.super Lcom/android/launcher3/widget/NavigableAppWidgetHostView;
.source "BaseLauncherAppWidgetHostView.java"


# instance fields
.field private final mCornerRadiusEnforcementOutline:Landroid/view/ViewOutlineProvider;

.field private final mEnforcedCornerRadius:F

.field private final mEnforcedRectangle:Landroid/graphics/Rect;

.field protected final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static bridge synthetic -$$Nest$fgetmEnforcedCornerRadius(Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mEnforcedCornerRadius:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnforcedRectangle(Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mEnforcedRectangle:Landroid/graphics/Rect;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 53
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mEnforcedRectangle:Landroid/graphics/Rect;

    .line 41
    new-instance v0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView$1;-><init>(Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mCornerRadiusEnforcementOutline:Landroid/view/ViewOutlineProvider;

    .line 55
    sget-object v0, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->setExecutor(Ljava/util/concurrent/Executor;)V

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    .line 58
    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/widget/RoundedCornerEnforcement;->computeEnforcedRadius(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mEnforcedCornerRadius:F

    .line 59
    return-void
.end method

.method private enforceRoundedCorners()V
    .locals 2

    .line 93
    iget v0, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mEnforcedCornerRadius:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_3

    invoke-static {}, Lcom/android/launcher3/widget/RoundedCornerEnforcement;->isRoundedCornerEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 97
    :cond_0
    invoke-static {p0}, Lcom/android/launcher3/widget/RoundedCornerEnforcement;->findBackground(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 98
    .local v0, "background":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 99
    invoke-static {p0, v0}, Lcom/android/launcher3/widget/RoundedCornerEnforcement;->hasAppWidgetOptedOut(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mEnforcedRectangle:Landroid/graphics/Rect;

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/widget/RoundedCornerEnforcement;->computeRoundedRectangle(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 106
    iget-object v1, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mCornerRadiusEnforcementOutline:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 107
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->setClipToOutline(Z)V

    .line 108
    return-void

    .line 100
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->resetRoundedCorners()V

    .line 101
    return-void

    .line 94
    .end local v0    # "background":Landroid/view/View;
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->resetRoundedCorners()V

    .line 95
    return-void
.end method

.method private resetRoundedCorners()V
    .locals 1

    .line 87
    sget-object v0, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->setClipToOutline(Z)V

    .line 89
    return-void
.end method


# virtual methods
.method public getEnforcedCornerRadius()F
    .locals 1

    .line 112
    iget v0, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mEnforcedCornerRadius:F

    return v0
.end method

.method protected getErrorView()Landroid/view/View;
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/launcher3/R$layout;->appwidget_error:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hasEnforcedCornerRadius()Z
    .locals 1

    .line 117
    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->getClipToOutline()Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 77
    :try_start_0
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->onLayout(ZIIII)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->post(Ljava/lang/Runnable;)Z

    .line 82
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    invoke-direct {p0}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->enforceRoundedCorners()V

    .line 83
    return-void
.end method

.method public switchToErrorView()V
    .locals 3

    .line 71
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 72
    return-void
.end method
