.class public Lcom/android/launcher3/widget/custom/CustomWidgetManager;
.super Ljava/lang/Object;
.source "CustomWidgetManager.java"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;
.implements Lcom/android/launcher3/util/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/plugins/PluginListener<",
        "Lcom/android/systemui/plugins/CustomWidgetPlugin;",
        ">;",
        "Lcom/android/launcher3/util/SafeCloseable;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/launcher3/widget/custom/CustomWidgetManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAutoProviderId:I

.field private final mContext:Landroid/content/Context;

.field private final mCustomWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlugins:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/plugins/CustomWidgetPlugin;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetRefreshCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;"
        }
    .end annotation
.end field

.field private final mWidgetsIdMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$KTvIvuJBygaYFI3nHoDo6nn7Fjg(Landroid/content/Context;)Lcom/android/launcher3/widget/custom/CustomWidgetManager;
    .locals 1

    new-instance v0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/custom/CustomWidgetManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v1, Lcom/android/launcher3/widget/custom/CustomWidgetManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/launcher3/widget/custom/CustomWidgetManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mAutoProviderId:I

    .line 67
    iput-object p1, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mContext:Landroid/content/Context;

    .line 68
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mPlugins:Landroid/util/SparseArray;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mCustomWidgets:Ljava/util/List;

    .line 70
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mWidgetsIdMap:Landroid/util/SparseArray;

    .line 71
    sget-object v0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;

    const-class v1, Lcom/android/systemui/plugins/CustomWidgetPlugin;

    .line 72
    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 73
    return-void
.end method

.method private findProviderId(Lcom/android/systemui/plugins/CustomWidgetPlugin;)I
    .locals 3
    .param p1, "plugin"    # Lcom/android/systemui/plugins/CustomWidgetPlugin;

    .line 173
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mPlugins:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 174
    iget-object v1, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mPlugins:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 175
    .local v1, "providerId":I
    iget-object v2, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mPlugins:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 176
    return v1

    .line 173
    .end local v1    # "providerId":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private static newInfo(ILcom/android/systemui/plugins/CustomWidgetPlugin;Landroid/os/Parcel;Landroid/content/Context;)Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;
    .locals 5
    .param p0, "providerId"    # I
    .param p1, "plugin"    # Lcom/android/systemui/plugins/CustomWidgetPlugin;
    .param p2, "parcel"    # Landroid/os/Parcel;
    .param p3, "context"    # Landroid/content/Context;

    .line 157
    new-instance v0, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, p0}, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;-><init>(Landroid/os/Parcel;ZI)V

    .line 159
    .local v0, "info":Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;
    new-instance v1, Landroid/content/ComponentName;

    .line 160
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#custom-widget-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 162
    invoke-interface {p1}, Lcom/android/systemui/plugins/CustomWidgetPlugin;->getLabel()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 163
    invoke-interface {p1}, Lcom/android/systemui/plugins/CustomWidgetPlugin;->getResizeMode()I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;->resizeMode:I

    .line 165
    invoke-interface {p1}, Lcom/android/systemui/plugins/CustomWidgetPlugin;->getSpanX()I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;->spanX:I

    .line 166
    invoke-interface {p1}, Lcom/android/systemui/plugins/CustomWidgetPlugin;->getSpanY()I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;->spanY:I

    .line 167
    invoke-interface {p1}, Lcom/android/systemui/plugins/CustomWidgetPlugin;->getMinSpanX()I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;->minSpanX:I

    .line 168
    invoke-interface {p1}, Lcom/android/systemui/plugins/CustomWidgetPlugin;->getMinSpanY()I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;->minSpanY:I

    .line 169
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 77
    sget-object v0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    .line 78
    return-void
.end method

.method public getWidgetIdForCustomProvider(Landroid/content/ComponentName;)I
    .locals 2
    .param p1, "provider"    # Landroid/content/ComponentName;

    .line 135
    iget-object v0, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mWidgetsIdMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 136
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 137
    iget-object v1, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mWidgetsIdMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    rsub-int/lit8 v1, v1, -0x64

    return v1

    .line 139
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getWidgetProvider(I)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    .locals 4
    .param p1, "widgetId"    # I

    .line 148
    iget-object v0, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mWidgetsIdMap:Landroid/util/SparseArray;

    rsub-int/lit8 v1, p1, -0x64

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 149
    .local v0, "cn":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mCustomWidgets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    .line 150
    .local v2, "info":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    iget-object v3, v2, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    .line 151
    .end local v2    # "info":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    :cond_0
    goto :goto_0

    .line 152
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/CustomWidgetPlugin;Landroid/content/Context;)V
    .locals 6
    .param p1, "plugin"    # Lcom/android/systemui/plugins/CustomWidgetPlugin;
    .param p2, "context"    # Landroid/content/Context;

    .line 82
    iget-object v0, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mPlugins:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mAutoProviderId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 83
    invoke-static {p2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 84
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 85
    .local v0, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 86
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 87
    .local v1, "parcel":Landroid/os/Parcel;
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v3, v1, v2}, Landroid/appwidget/AppWidgetProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 88
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 89
    iget v2, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mAutoProviderId:I

    invoke-static {v2, p1, v1, p2}, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->newInfo(ILcom/android/systemui/plugins/CustomWidgetPlugin;Landroid/os/Parcel;Landroid/content/Context;)Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;

    move-result-object v2

    .line 90
    .local v2, "info":Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 91
    iget-object v3, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mCustomWidgets:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v3, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mWidgetsIdMap:Landroid/util/SparseArray;

    iget v4, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mAutoProviderId:I

    iget-object v5, v2, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    iget-object v3, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mWidgetRefreshCallback:Ljava/util/function/Consumer;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 94
    iget v3, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mAutoProviderId:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mAutoProviderId:I

    .line 95
    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    .line 50
    check-cast p1, Lcom/android/systemui/plugins/CustomWidgetPlugin;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->onPluginConnected(Lcom/android/systemui/plugins/CustomWidgetPlugin;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/CustomWidgetPlugin;)V
    .locals 3
    .param p1, "plugin"    # Lcom/android/systemui/plugins/CustomWidgetPlugin;

    .line 99
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->findProviderId(Lcom/android/systemui/plugins/CustomWidgetPlugin;)I

    move-result v0

    .line 100
    .local v0, "providerId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mPlugins:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 102
    iget-object v1, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mCustomWidgets:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->getWidgetProvider(I)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 103
    iget-object v1, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mWidgetsIdMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 104
    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0

    .line 50
    check-cast p1, Lcom/android/systemui/plugins/CustomWidgetPlugin;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->onPluginDisconnected(Lcom/android/systemui/plugins/CustomWidgetPlugin;)V

    return-void
.end method

.method public onViewCreated(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;)V
    .locals 3
    .param p1, "view"    # Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    .line 117
    invoke-virtual {p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;

    .line 118
    .local v0, "info":Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;
    iget-object v1, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mPlugins:Landroid/util/SparseArray;

    iget v2, v0, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;->providerId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/CustomWidgetPlugin;

    .line 119
    .local v1, "plugin":Lcom/android/systemui/plugins/CustomWidgetPlugin;
    if-nez v1, :cond_0

    return-void

    .line 120
    :cond_0
    invoke-interface {v1, p1}, Lcom/android/systemui/plugins/CustomWidgetPlugin;->onViewCreated(Landroid/appwidget/AppWidgetHostView;)V

    .line 121
    return-void
.end method

.method public setWidgetRefreshCallback(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;)V"
        }
    .end annotation

    .line 110
    .local p1, "cb":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/launcher3/util/PackageUserKey;>;"
    iput-object p1, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mWidgetRefreshCallback:Ljava/util/function/Consumer;

    .line 111
    return-void
.end method

.method public stream()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->mCustomWidgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
