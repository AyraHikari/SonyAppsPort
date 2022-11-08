.class public Lcom/android/launcher3/qsb/QsbWidgetHostView;
.super Lcom/android/launcher3/widget/NavigableAppWidgetHostView;
.source "QsbWidgetHostView.java"


# instance fields
.field private mPreviousOrientation:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/qsb/QsbWidgetHostView;->setFocusable(Z)V

    .line 41
    sget v0, Lcom/android/launcher3/R$drawable;->qsb_host_view_focus_bg:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/qsb/QsbWidgetHostView;->setBackgroundResource(I)V

    .line 42
    return-void
.end method

.method public static getDefaultView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p0, "parent"    # Landroid/view/ViewGroup;

    .line 88
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$layout;->qsb_default_view:I

    .line 89
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 90
    .local v0, "v":Landroid/view/View;
    sget v1, Lcom/android/launcher3/R$id;->btn_qsb_search:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/qsb/QsbWidgetHostView$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/launcher3/qsb/QsbWidgetHostView$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    return-object v0
.end method

.method static synthetic lambda$getDefaultView$2(Landroid/view/View;)V
    .locals 5
    .param p0, "v2"    # Landroid/view/View;

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    return-void
.end method


# virtual methods
.method protected getDefaultView()Landroid/view/View;
    .locals 2

    .line 81
    invoke-super {p0}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->getDefaultView()Landroid/view/View;

    move-result-object v0

    .line 82
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/android/launcher3/qsb/QsbWidgetHostView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/qsb/QsbWidgetHostView$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/qsb/QsbWidgetHostView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-object v0
.end method

.method protected getErrorView()Landroid/view/View;
    .locals 1

    .line 76
    invoke-static {p0}, Lcom/android/launcher3/qsb/QsbWidgetHostView;->getDefaultView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isReinflateRequired(I)Z
    .locals 1
    .param p1, "orientation"    # I

    .line 54
    iget v0, p0, Lcom/android/launcher3/qsb/QsbWidgetHostView;->mPreviousOrientation:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$getDefaultView$1$com-android-launcher3-qsb-QsbWidgetHostView(Landroid/view/View;)V
    .locals 5
    .param p1, "v2"    # Landroid/view/View;

    .line 83
    invoke-virtual {p0}, Lcom/android/launcher3/qsb/QsbWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    return-void
.end method

.method synthetic lambda$onLayout$0$com-android-launcher3-qsb-QsbWidgetHostView()V
    .locals 3

    .line 69
    new-instance v0, Landroid/widget/RemoteViews;

    .line 70
    invoke-virtual {p0}, Lcom/android/launcher3/qsb/QsbWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 69
    invoke-virtual {p0, v0}, Lcom/android/launcher3/qsb/QsbWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 66
    :try_start_0
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->onLayout(ZIIII)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Lcom/android/launcher3/qsb/QsbWidgetHostView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/qsb/QsbWidgetHostView$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/qsb/QsbWidgetHostView;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/qsb/QsbWidgetHostView;->post(Ljava/lang/Runnable;)Z

    .line 72
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method public setPadding(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 60
    const/4 v0, 0x0

    invoke-super {p0, v0, v0, v0, v0}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->setPadding(IIII)V

    .line 61
    return-void
.end method

.method protected shouldAllowDirectClick()Z
    .locals 1

    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public updateAppWidget(Landroid/widget/RemoteViews;)V
    .locals 1
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;

    .line 47
    invoke-virtual {p0}, Lcom/android/launcher3/qsb/QsbWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher3/qsb/QsbWidgetHostView;->mPreviousOrientation:I

    .line 48
    invoke-super {p0, p1}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 49
    return-void
.end method
