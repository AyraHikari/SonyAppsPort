.class public Lcom/android/launcher3/qsb/QsbContainerView;
.super Landroid/widget/FrameLayout;
.source "QsbContainerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/qsb/QsbContainerView$WidgetProvidersUpdateCallback;,
        Lcom/android/launcher3/qsb/QsbContainerView$WidgetViewFactory;,
        Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;,
        Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;
    }
.end annotation


# static fields
.field public static final SEARCH_PROVIDER_SETTINGS_KEY:Ljava/lang/String; = "SEARCH_PROVIDER_PACKAGE_NAME"


# direct methods
.method static bridge synthetic -$$Nest$smcontainsAll(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/qsb/QsbContainerView;->containsAll(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 134
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 138
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 142
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 143
    return-void
.end method

.method private static containsAll(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 6
    .param p0, "original"    # Landroid/os/Bundle;
    .param p1, "updates"    # Landroid/os/Bundle;

    .line 401
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 402
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 403
    .local v2, "value1":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 404
    .local v3, "value2":Ljava/lang/Object;
    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 405
    if-eqz v3, :cond_1

    .line 406
    return v4

    .line 408
    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 409
    return v4

    .line 411
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value1":Ljava/lang/Object;
    .end local v3    # "value2":Ljava/lang/Object;
    :cond_1
    goto :goto_0

    .line 412
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static getSearchComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 119
    nop

    .line 120
    invoke-static {p0}, Lcom/android/launcher3/qsb/QsbContainerView;->getSearchWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 121
    .local v0, "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v0, :cond_0

    .line 122
    iget-object v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    return-object v1

    .line 124
    :cond_0
    invoke-static {p0}, Lcom/android/launcher3/qsb/QsbContainerView;->getSearchWidgetPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "pkgName":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 127
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 129
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getSearchWidgetPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SEARCH_PROVIDER_PACKAGE_NAME"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "providerPkg":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 77
    const-class v1, Landroid/app/SearchManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 78
    .local v1, "searchManager":Landroid/app/SearchManager;
    invoke-virtual {v1}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v2

    .line 79
    .local v2, "componentName":Landroid/content/ComponentName;
    if-eqz v2, :cond_0

    .line 80
    invoke-virtual {v1}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 83
    .end local v1    # "searchManager":Landroid/app/SearchManager;
    .end local v2    # "componentName":Landroid/content/ComponentName;
    :cond_0
    return-object v0
.end method

.method public static getSearchWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 93
    invoke-static {p0}, Lcom/android/launcher3/qsb/QsbContainerView;->getSearchWidgetPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "providerPkg":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 95
    return-object v1

    .line 98
    :cond_0
    const/4 v2, 0x0

    .line 99
    .local v2, "defaultWidgetForSearchPackage":Landroid/appwidget/AppWidgetProviderInfo;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    .line 101
    .local v3, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v3, v0, v1}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForPackage(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/appwidget/AppWidgetProviderInfo;

    .line 102
    .local v4, "info":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v5, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v4, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-nez v5, :cond_2

    .line 103
    iget v5, v4, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_1

    .line 105
    return-object v4

    .line 106
    :cond_1
    if-nez v2, :cond_2

    .line 107
    move-object v2, v4

    .line 110
    .end local v4    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_2
    goto :goto_0

    .line 111
    :cond_3
    return-object v2
.end method


# virtual methods
.method public setPadding(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 147
    const/4 v0, 0x0

    invoke-super {p0, v0, v0, v0, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 148
    return-void
.end method

.method protected setPaddingUnchecked(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 151
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 152
    return-void
.end method
