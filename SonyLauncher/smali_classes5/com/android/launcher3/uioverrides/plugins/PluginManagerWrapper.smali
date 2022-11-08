.class public Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;
.super Ljava/lang/Object;
.source "PluginManagerWrapper.java"


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLUGIN_CHANGED:Ljava/lang/String; = "com.android.systemui.action.PLUGIN_CHANGED"

.field private static final UNCAUGHT_EXCEPTION_PRE_HANDLER_MANAGER:Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPluginEnabler:Lcom/android/launcher3/uioverrides/plugins/PluginEnablerImpl;

.field private final mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;


# direct methods
.method public static synthetic $r8$lambda$wcrwVKrOKSKOcLjAzNnTL7QDkFk(Landroid/content/Context;)Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;
    .locals 1

    new-instance v0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v1, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    .line 51
    new-instance v0, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;

    invoke-direct {v0}, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;-><init>()V

    sput-object v0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->UNCAUGHT_EXCEPTION_PRE_HANDLER_MANAGER:Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "c"    # Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->mContext:Landroid/content/Context;

    .line 60
    new-instance v9, Lcom/android/launcher3/uioverrides/plugins/PluginEnablerImpl;

    invoke-direct {v9, p1}, Lcom/android/launcher3/uioverrides/plugins/PluginEnablerImpl;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->mPluginEnabler:Lcom/android/launcher3/uioverrides/plugins/PluginEnablerImpl;

    .line 61
    const-string v0, "jp.co.sony.mc.minusonemlc"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 62
    .local v10, "privilegedPlugins":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Lcom/android/systemui/shared/plugins/PluginInstance$Factory;

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/shared/plugins/PluginInstance$InstanceFactory;

    invoke-direct {v3}, Lcom/android/systemui/shared/plugins/PluginInstance$InstanceFactory;-><init>()V

    new-instance v4, Lcom/android/systemui/shared/plugins/PluginInstance$VersionChecker;

    invoke-direct {v4}, Lcom/android/systemui/shared/plugins/PluginInstance$VersionChecker;-><init>()V

    sget-boolean v6, Lcom/android/launcher3/Utilities;->IS_DEBUG_DEVICE:Z

    move-object v1, v8

    move-object v5, v10

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/shared/plugins/PluginInstance$Factory;-><init>(Ljava/lang/ClassLoader;Lcom/android/systemui/shared/plugins/PluginInstance$InstanceFactory;Lcom/android/systemui/shared/plugins/PluginInstance$VersionChecker;Ljava/util/List;Z)V

    .line 66
    .local v8, "instanceFactory":Lcom/android/systemui/shared/plugins/PluginInstance$Factory;
    new-instance v11, Lcom/android/systemui/shared/plugins/PluginActionManager$Factory;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    sget-object v4, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    const-class v0, Landroid/app/NotificationManager;

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/app/NotificationManager;

    move-object v0, v11

    move-object v1, p1

    move-object v6, v9

    move-object v7, v10

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/shared/plugins/PluginActionManager$Factory;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/app/NotificationManager;Lcom/android/systemui/shared/plugins/PluginEnabler;Ljava/util/List;Lcom/android/systemui/shared/plugins/PluginInstance$Factory;)V

    move-object v2, v11

    .line 71
    .local v2, "instanceManagerFactory":Lcom/android/systemui/shared/plugins/PluginActionManager$Factory;
    new-instance v11, Lcom/android/systemui/shared/plugins/PluginManagerImpl;

    sget-boolean v3, Lcom/android/launcher3/Utilities;->IS_DEBUG_DEVICE:Z

    sget-object v4, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->UNCAUGHT_EXCEPTION_PRE_HANDLER_MANAGER:Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;

    new-instance v6, Lcom/android/systemui/shared/plugins/PluginPrefs;

    invoke-direct {v6, p1}, Lcom/android/systemui/shared/plugins/PluginPrefs;-><init>(Landroid/content/Context;)V

    move-object v0, v11

    move-object v5, v9

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/shared/plugins/PluginActionManager$Factory;ZLcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;Lcom/android/systemui/shared/plugins/PluginEnabler;Lcom/android/systemui/shared/plugins/PluginPrefs;Ljava/util/List;)V

    iput-object v11, p0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    .line 75
    return-void
.end method

.method public static hasPlugins(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 109
    invoke-static {p0}, Lcom/android/systemui/shared/plugins/PluginPrefs;->hasPlugins(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static pluginEnabledKey(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 1
    .param p0, "cn"    # Landroid/content/ComponentName;

    .line 105
    invoke-static {p0}, Lcom/android/launcher3/uioverrides/plugins/PluginEnablerImpl;->pluginEnabledKey(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/systemui/plugins/Plugin;",
            ">(",
            "Lcom/android/systemui/plugins/PluginListener<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 84
    .local p1, "listener":Lcom/android/systemui/plugins/PluginListener;, "Lcom/android/systemui/plugins/PluginListener<TT;>;"
    .local p2, "pluginClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 85
    return-void
.end method

.method public addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V
    .locals 1
    .param p3, "allowMultiple"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/systemui/plugins/Plugin;",
            ">(",
            "Lcom/android/systemui/plugins/PluginListener<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 90
    .local p1, "listener":Lcom/android/systemui/plugins/PluginListener;, "Lcom/android/systemui/plugins/PluginListener<TT;>;"
    .local p2, "pluginClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/systemui/shared/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 91
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v0, "enabledPlugins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v1, "disabledPlugins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->getPluginActions()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 116
    .local v3, "action":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x200

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 118
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .local v6, "installedPlugin":Landroid/content/ComponentName;
    iget-object v7, p0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->mPluginEnabler:Lcom/android/launcher3/uioverrides/plugins/PluginEnablerImpl;

    invoke-virtual {v7, v6}, Lcom/android/launcher3/uioverrides/plugins/PluginEnablerImpl;->isEnabled(Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 121
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 123
    :cond_0
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "installedPlugin":Landroid/content/ComponentName;
    :goto_2
    goto :goto_1

    .line 126
    .end local v3    # "action":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 128
    :cond_2
    const-string v2, "PluginManager:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  numEnabledPlugins="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  numDisabledPlugins="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  enabledPlugins="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  disabledPlugins="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public getPluginActions()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance v0, Lcom/android/systemui/shared/plugins/PluginPrefs;

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/shared/plugins/PluginPrefs;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/systemui/shared/plugins/PluginPrefs;->getPluginList()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getPluginEnabler()Lcom/android/launcher3/uioverrides/plugins/PluginEnablerImpl;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->mPluginEnabler:Lcom/android/launcher3/uioverrides/plugins/PluginEnablerImpl;

    return-object v0
.end method

.method public removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/plugins/PluginListener<",
            "+",
            "Lcom/android/systemui/plugins/Plugin;",
            ">;)V"
        }
    .end annotation

    .line 94
    .local p1, "listener":Lcom/android/systemui/plugins/PluginListener;, "Lcom/android/systemui/plugins/PluginListener<+Lcom/android/systemui/plugins/Plugin;>;"
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    invoke-interface {v0, p1}, Lcom/android/systemui/shared/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    .line 95
    return-void
.end method
