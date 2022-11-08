.class public Lcom/android/searchlauncher/SmartspaceQsbWidget$SmartSpaceFragment;
.super Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;
.source "SmartspaceQsbWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/searchlauncher/SmartspaceQsbWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmartSpaceFragment"
.end annotation


# static fields
.field private static final SMART_SPACE_WIDGET_HOST_ID:I = 0x403


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;-><init>()V

    .line 46
    const-string v0, "smart_space_widget_id"

    iput-object v0, p0, Lcom/android/searchlauncher/SmartspaceQsbWidget$SmartSpaceFragment;->mKeyWidgetId:Ljava/lang/String;

    .line 47
    return-void
.end method

.method static synthetic lambda$createHost$0(Landroid/content/Context;)Lcom/android/launcher3/qsb/QsbWidgetHostView;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .line 52
    new-instance v0, Lcom/android/searchlauncher/SmartspaceQsbWidget$SmartSpaceHostView;

    invoke-direct {v0, p0}, Lcom/android/searchlauncher/SmartspaceQsbWidget$SmartSpaceHostView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method protected createBindOptions()Landroid/os/Bundle;
    .locals 3

    .line 73
    invoke-super {p0}, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->createBindOptions()Landroid/os/Bundle;

    move-result-object v0

    .line 74
    .local v0, "opts":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/android/searchlauncher/SmartspaceQsbWidget$SmartSpaceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "attached-launcher-identifier"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v1, "com.google.android.apps.gsa.widget.PREINSTALLED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 76
    return-object v0
.end method

.method protected createHost()Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;
    .locals 4

    .line 51
    new-instance v0, Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;

    invoke-virtual {p0}, Lcom/android/searchlauncher/SmartspaceQsbWidget$SmartSpaceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/searchlauncher/SmartspaceQsbWidget$SmartSpaceFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/searchlauncher/SmartspaceQsbWidget$SmartSpaceFragment$$ExternalSyntheticLambda0;-><init>()V

    const/16 v3, 0x403

    invoke-direct {v0, v1, v3, v2}, Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;-><init>(Landroid/content/Context;ILcom/android/launcher3/qsb/QsbContainerView$WidgetViewFactory;)V

    return-object v0
.end method

.method protected getDefaultView(Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "showSetupIcon"    # Z

    .line 68
    invoke-static {p1}, Lcom/android/searchlauncher/SmartspaceQsbWidget;->getDateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getSearchWidgetProvider()Landroid/appwidget/AppWidgetProviderInfo;
    .locals 4

    .line 57
    invoke-virtual {p0}, Lcom/android/searchlauncher/SmartspaceQsbWidget$SmartSpaceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 58
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    const-string v2, "com.google.android.googlequicksearchbox"

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForPackage(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 57
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetProviderInfo;

    .line 59
    .local v1, "info":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.google.android.googlequicksearchbox.SearchWidgetProvider"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    return-object v1

    .line 62
    .end local v1    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_0
    goto :goto_0

    .line 63
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
