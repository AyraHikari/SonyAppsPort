.class public Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;
.super Landroid/appwidget/AppWidgetHost;
.source "QsbContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/qsb/QsbContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QsbWidgetHost"
.end annotation


# instance fields
.field private final mViewFactory:Lcom/android/launcher3/qsb/QsbContainerView$WidgetViewFactory;

.field private final mWidgetsUpdateCallback:Lcom/android/launcher3/qsb/QsbContainerView$WidgetProvidersUpdateCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/launcher3/qsb/QsbContainerView$WidgetViewFactory;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostId"    # I
    .param p3, "viewFactory"    # Lcom/android/launcher3/qsb/QsbContainerView$WidgetViewFactory;

    .line 361
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;-><init>(Landroid/content/Context;ILcom/android/launcher3/qsb/QsbContainerView$WidgetViewFactory;Lcom/android/launcher3/qsb/QsbContainerView$WidgetProvidersUpdateCallback;)V

    .line 362
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/launcher3/qsb/QsbContainerView$WidgetViewFactory;Lcom/android/launcher3/qsb/QsbContainerView$WidgetProvidersUpdateCallback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostId"    # I
    .param p3, "viewFactory"    # Lcom/android/launcher3/qsb/QsbContainerView$WidgetViewFactory;
    .param p4, "widgetProvidersUpdateCallback"    # Lcom/android/launcher3/qsb/QsbContainerView$WidgetProvidersUpdateCallback;

    .line 355
    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 356
    iput-object p3, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;->mViewFactory:Lcom/android/launcher3/qsb/QsbContainerView$WidgetViewFactory;

    .line 357
    iput-object p4, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;->mWidgetsUpdateCallback:Lcom/android/launcher3/qsb/QsbContainerView$WidgetProvidersUpdateCallback;

    .line 358
    return-void
.end method


# virtual methods
.method protected onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I
    .param p3, "appWidget"    # Landroid/appwidget/AppWidgetProviderInfo;

    .line 367
    iget-object v0, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;->mViewFactory:Lcom/android/launcher3/qsb/QsbContainerView$WidgetViewFactory;

    invoke-interface {v0, p1}, Lcom/android/launcher3/qsb/QsbContainerView$WidgetViewFactory;->newView(Landroid/content/Context;)Lcom/android/launcher3/qsb/QsbWidgetHostView;

    move-result-object v0

    return-object v0
.end method

.method protected onProvidersChanged()V
    .locals 1

    .line 372
    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->onProvidersChanged()V

    .line 373
    iget-object v0, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;->mWidgetsUpdateCallback:Lcom/android/launcher3/qsb/QsbContainerView$WidgetProvidersUpdateCallback;

    if-eqz v0, :cond_0

    .line 374
    invoke-interface {v0}, Lcom/android/launcher3/qsb/QsbContainerView$WidgetProvidersUpdateCallback;->onProvidersUpdated()V

    .line 376
    :cond_0
    return-void
.end method
