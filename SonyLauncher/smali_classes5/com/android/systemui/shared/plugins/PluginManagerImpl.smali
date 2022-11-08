.class public Lcom/android/systemui/shared/plugins/PluginManagerImpl;
.super Landroid/content/BroadcastReceiver;
.source "PluginManagerImpl.java"

# interfaces
.implements Lcom/android/systemui/shared/plugins/PluginManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/plugins/PluginManagerImpl$CrashWhilePluginActiveException;,
        Lcom/android/systemui/shared/plugins/PluginManagerImpl$PluginExceptionHandler;,
        Lcom/android/systemui/shared/plugins/PluginManagerImpl$ClassLoaderFilter;
    }
.end annotation


# static fields
.field static final DISABLE_PLUGIN:Ljava/lang/String; = "com.android.systemui.action.DISABLE_PLUGIN"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActionManagerFactory:Lcom/android/systemui/shared/plugins/PluginActionManager$Factory;

.field private final mClassLoaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mIsDebuggable:Z

.field private mListening:Z

.field private final mPluginEnabler:Lcom/android/systemui/shared/plugins/PluginEnabler;

.field private final mPluginMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/systemui/plugins/PluginListener<",
            "*>;",
            "Lcom/android/systemui/shared/plugins/PluginActionManager<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mPluginPrefs:Lcom/android/systemui/shared/plugins/PluginPrefs;

.field private final mPrivilegedPlugins:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/shared/plugins/PluginActionManager$Factory;ZLcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;Lcom/android/systemui/shared/plugins/PluginEnabler;Lcom/android/systemui/shared/plugins/PluginPrefs;Ljava/util/List;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "actionManagerFactory"    # Lcom/android/systemui/shared/plugins/PluginActionManager$Factory;
    .param p3, "debuggable"    # Z
    .param p4, "preHandlerManager"    # Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;
    .param p5, "pluginEnabler"    # Lcom/android/systemui/shared/plugins/PluginEnabler;
    .param p6, "pluginPrefs"    # Lcom/android/systemui/shared/plugins/PluginPrefs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/shared/plugins/PluginActionManager$Factory;",
            "Z",
            "Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;",
            "Lcom/android/systemui/shared/plugins/PluginEnabler;",
            "Lcom/android/systemui/shared/plugins/PluginPrefs;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 67
    .local p7, "privilegedPlugins":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 50
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    .line 52
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mClassLoaders:Ljava/util/Map;

    .line 53
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPrivilegedPlugins:Landroid/util/ArraySet;

    .line 68
    iput-object p1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mActionManagerFactory:Lcom/android/systemui/shared/plugins/PluginActionManager$Factory;

    .line 70
    iput-boolean p3, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mIsDebuggable:Z

    .line 71
    invoke-virtual {v0, p7}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 72
    iput-object p6, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginPrefs:Lcom/android/systemui/shared/plugins/PluginPrefs;

    .line 73
    iput-object p5, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginEnabler:Lcom/android/systemui/shared/plugins/PluginEnabler;

    .line 75
    new-instance v0, Lcom/android/systemui/shared/plugins/PluginManagerImpl$PluginExceptionHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/shared/plugins/PluginManagerImpl$PluginExceptionHandler;-><init>(Lcom/android/systemui/shared/plugins/PluginManagerImpl;Lcom/android/systemui/shared/plugins/PluginManagerImpl$1;)V

    invoke-virtual {p4, v0}, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;->registerHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 76
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/shared/plugins/PluginManagerImpl;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/shared/plugins/PluginManagerImpl;

    .line 45
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method private clearClassLoader(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mClassLoaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPluginPrivileged(Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "pluginName"    # Landroid/content/ComponentName;

    .line 234
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPrivilegedPlugins:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 235
    .local v1, "componentNameOrPackage":Ljava/lang/String;
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 236
    .local v2, "componentName":Landroid/content/ComponentName;
    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 237
    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 238
    return v3

    .line 240
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 241
    return v3

    .line 243
    .end local v1    # "componentNameOrPackage":Ljava/lang/String;
    .end local v2    # "componentName":Landroid/content/ComponentName;
    :cond_1
    goto :goto_0

    .line 244
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private startListening()V
    .locals 8

    .line 127
    iget-boolean v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mListening:Z

    if-eqz v0, :cond_0

    return-void

    .line 128
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mListening:Z

    .line 129
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 134
    iget-object v2, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 135
    const-string v2, "com.android.systemui.action.PLUGIN_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    const-string v2, "com.android.systemui.action.DISABLE_PLUGIN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 138
    iget-object v2, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x2

    const-string v5, "com.android.systemui.permission.PLUGIN"

    move-object v3, p0

    move-object v4, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 140
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 141
    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    return-void
.end method

.method private stopListening()V
    .locals 1

    .line 145
    iget-boolean v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mListening:Z

    if-nez v0, :cond_0

    return-void

    .line 146
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mListening:Z

    .line 147
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 148
    return-void
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

    .line 88
    .local p1, "listener":Lcom/android/systemui/plugins/PluginListener;, "Lcom/android/systemui/plugins/PluginListener<TT;>;"
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 89
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

    .line 94
    .local p1, "listener":Lcom/android/systemui/plugins/PluginListener;, "Lcom/android/systemui/plugins/PluginListener<TT;>;"
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p2}, Lcom/android/systemui/shared/plugins/PluginManager$Helper;->getAction(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 95
    return-void
.end method

.method public addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/systemui/plugins/Plugin;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/android/systemui/plugins/PluginListener<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 99
    .local p2, "listener":Lcom/android/systemui/plugins/PluginListener;, "Lcom/android/systemui/plugins/PluginListener<TT;>;"
    .local p3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 100
    return-void
.end method

.method public addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p4, "allowMultiple"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/systemui/plugins/Plugin;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/android/systemui/plugins/PluginListener<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 104
    .local p2, "listener":Lcom/android/systemui/plugins/PluginListener;, "Lcom/android/systemui/plugins/PluginListener<TT;>;"
    .local p3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginPrefs:Lcom/android/systemui/shared/plugins/PluginPrefs;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/plugins/PluginPrefs;->addAction(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mActionManagerFactory:Lcom/android/systemui/shared/plugins/PluginActionManager$Factory;

    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->isDebuggable()Z

    move-result v6

    .line 105
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/shared/plugins/PluginActionManager$Factory;->create(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;ZZ)Lcom/android/systemui/shared/plugins/PluginActionManager;

    move-result-object v0

    .line 107
    .local v0, "p":Lcom/android/systemui/shared/plugins/PluginActionManager;, "Lcom/android/systemui/shared/plugins/PluginActionManager<TT;>;"
    invoke-virtual {v0}, Lcom/android/systemui/shared/plugins/PluginActionManager;->loadAll()V

    .line 108
    monitor-enter p0

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    invoke-direct {p0}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->startListening()V

    .line 112
    return-void

    .line 110
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public dependsOn(Lcom/android/systemui/plugins/Plugin;Ljava/lang/Class;)Z
    .locals 2
    .param p1, "p"    # Lcom/android/systemui/plugins/Plugin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/systemui/plugins/Plugin;",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    .line 213
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    .line 214
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 215
    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/plugins/PluginActionManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/shared/plugins/PluginActionManager;->dependsOn(Lcom/android/systemui/plugins/Plugin;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    monitor-exit p0

    const/4 v1, 0x1

    return v1

    .line 214
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    .end local v0    # "i":I
    :cond_1
    monitor-exit p0

    .line 220
    const/4 v0, 0x0

    return v0

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 224
    monitor-enter p0

    .line 225
    :try_start_0
    const-string v0, "  plugin map (%d):"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/PluginListener;

    .line 227
    .local v2, "listener":Lcom/android/systemui/plugins/PluginListener;, "Lcom/android/systemui/plugins/PluginListener<*>;"
    const-string v3, "    %s -> %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v4

    iget-object v6, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    .line 228
    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v1

    .line 227
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 229
    .end local v2    # "listener":Lcom/android/systemui/plugins/PluginListener;, "Lcom/android/systemui/plugins/PluginListener<*>;"
    goto :goto_0

    .line 230
    :cond_0
    monitor-exit p0

    .line 231
    return-void

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPrivilegedPlugins()[Ljava/lang/String;
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPrivilegedPlugins:Landroid/util/ArraySet;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public isDebuggable()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mIsDebuggable:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 152
    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    monitor-enter p0

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/plugins/PluginActionManager;

    .line 155
    .local v1, "manager":Lcom/android/systemui/shared/plugins/PluginActionManager;, "Lcom/android/systemui/shared/plugins/PluginActionManager<*>;"
    invoke-virtual {v1}, Lcom/android/systemui/shared/plugins/PluginActionManager;->loadAll()V

    .line 156
    .end local v1    # "manager":Lcom/android/systemui/shared/plugins/PluginActionManager;, "Lcom/android/systemui/shared/plugins/PluginActionManager<*>;"
    goto :goto_0

    .line 157
    :cond_0
    monitor-exit p0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 158
    :cond_1
    const-string v0, "com.android.systemui.action.DISABLE_PLUGIN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_3

    .line 159
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 160
    .local v0, "uri":Landroid/net/Uri;
    nop

    .line 161
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 160
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 162
    .local v2, "component":Landroid/content/ComponentName;
    invoke-direct {p0, v2}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->isPluginPrivileged(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 164
    return-void

    .line 166
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginEnabler:Lcom/android/systemui/shared/plugins/PluginEnabler;

    invoke-interface {v3, v2, v1}, Lcom/android/systemui/shared/plugins/PluginEnabler;->setDisabled(Landroid/content/ComponentName;I)V

    .line 167
    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/NotificationManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v1, v3, v4}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 169
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v2    # "component":Landroid/content/ComponentName;
    goto/16 :goto_5

    .line 170
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 171
    .local v0, "data":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "pkg":Ljava/lang/String;
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 173
    .local v3, "componentName":Landroid/content/ComponentName;
    invoke-direct {p0, v2}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->clearClassLoader(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 174
    sget-boolean v4, Landroid/os/Build;->IS_ENG:Z

    if-eqz v4, :cond_4

    .line 175
    iget-object v4, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reloading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 177
    :cond_4
    sget-object v4, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reloading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_5
    :goto_1
    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v3, :cond_7

    .line 182
    iget-object v4, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginEnabler:Lcom/android/systemui/shared/plugins/PluginEnabler;

    .line 183
    invoke-interface {v4, v3}, Lcom/android/systemui/shared/plugins/PluginEnabler;->getDisableReason(Landroid/content/ComponentName;)I

    move-result v4

    .line 184
    .local v4, "disableReason":I
    const/4 v5, 0x3

    if-eq v4, v5, :cond_6

    const/4 v5, 0x4

    if-eq v4, v5, :cond_6

    if-ne v4, v1, :cond_7

    .line 187
    :cond_6
    sget-object v1, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Re-enabling previously disabled plugin that has been updated: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 188
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 187
    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginEnabler:Lcom/android/systemui/shared/plugins/PluginEnabler;

    invoke-interface {v1, v3}, Lcom/android/systemui/shared/plugins/PluginEnabler;->setEnabled(Landroid/content/ComponentName;)V

    .line 192
    .end local v4    # "disableReason":I
    :cond_7
    monitor-enter p0

    .line 193
    :try_start_1
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 194
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 195
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_3

    .line 200
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/shared/plugins/PluginActionManager;

    .line 201
    .local v4, "manager":Lcom/android/systemui/shared/plugins/PluginActionManager;, "Lcom/android/systemui/shared/plugins/PluginActionManager<*>;"
    invoke-virtual {v4, v2}, Lcom/android/systemui/shared/plugins/PluginActionManager;->onPackageRemoved(Ljava/lang/String;)V

    .line 202
    .end local v4    # "manager":Lcom/android/systemui/shared/plugins/PluginActionManager;, "Lcom/android/systemui/shared/plugins/PluginActionManager<*>;"
    goto :goto_2

    .line 196
    :cond_9
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/shared/plugins/PluginActionManager;

    .line 197
    .local v4, "actionManager":Lcom/android/systemui/shared/plugins/PluginActionManager;, "Lcom/android/systemui/shared/plugins/PluginActionManager<*>;"
    invoke-virtual {v4, v2}, Lcom/android/systemui/shared/plugins/PluginActionManager;->reloadPackage(Ljava/lang/String;)V

    .line 198
    .end local v4    # "actionManager":Lcom/android/systemui/shared/plugins/PluginActionManager;, "Lcom/android/systemui/shared/plugins/PluginActionManager<*>;"
    goto :goto_4

    :cond_a
    nop

    .line 204
    :cond_b
    monitor-exit p0

    .line 206
    .end local v0    # "data":Landroid/net/Uri;
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "componentName":Landroid/content/ComponentName;
    :goto_5
    return-void

    .line 204
    .restart local v0    # "data":Landroid/net/Uri;
    .restart local v2    # "pkg":Ljava/lang/String;
    .restart local v3    # "componentName":Landroid/content/ComponentName;
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/plugins/PluginListener<",
            "*>;)V"
        }
    .end annotation

    .line 115
    .local p1, "listener":Lcom/android/systemui/plugins/PluginListener;, "Lcom/android/systemui/plugins/PluginListener<*>;"
    monitor-enter p0

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    monitor-exit p0

    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/plugins/PluginActionManager;

    invoke-virtual {v0}, Lcom/android/systemui/shared/plugins/PluginActionManager;->destroy()V

    .line 120
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 121
    invoke-direct {p0}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->stopListening()V

    .line 123
    :cond_1
    monitor-exit p0

    .line 124
    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
