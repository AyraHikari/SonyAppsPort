.class public abstract Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;
.super Landroid/content/ContextWrapper;
.source "MainThreadInitializedObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/MainThreadInitializedObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SandboxContext"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SandboxContext"


# instance fields
.field protected final mAllowedObjects:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/launcher3/util/MainThreadInitializedObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mDestroyLock:Ljava/lang/Object;

.field private mDestroyed:Z

.field protected final mObjectMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/MainThreadInitializedObject;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final mOrderedObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mgetObject(Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;Lcom/android/launcher3/util/MainThreadInitializedObject;Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;->getObject(Lcom/android/launcher3/util/MainThreadInitializedObject;Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public varargs constructor <init>(Landroid/content/Context;[Lcom/android/launcher3/util/MainThreadInitializedObject;)V
    .locals 2
    .param p1, "base"    # Landroid/content/Context;
    .param p2, "allowedObjects"    # [Lcom/android/launcher3/util/MainThreadInitializedObject;

    .line 108
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;->mObjectMap:Ljava/util/Map;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;->mOrderedObjects:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;->mDestroyLock:Ljava/lang/Object;

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;->mDestroyed:Z

    .line 109
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;->mAllowedObjects:Ljava/util/Set;

    .line 110
    return-void
.end method

.method private getObject(Lcom/android/launcher3/util/MainThreadInitializedObject;Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "TT;>;",
            "Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 135
    .local p1, "object":Lcom/android/launcher3/util/MainThreadInitializedObject;, "Lcom/android/launcher3/util/MainThreadInitializedObject<TT;>;"
    .local p2, "provider":Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;, "Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;->mDestroyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_0
    iget-boolean v1, p0, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 137
    const-string v1, "SandboxContext"

    const-string v2, "Static object access with a destroyed context"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;->mAllowedObjects:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 143
    iget-object v1, p0, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;->mObjectMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 144
    .local v1, "t":Ljava/lang/Object;, "TT;"
    if-eqz v1, :cond_1

    .line 145
    monitor-exit v0

    return-object v1

    .line 147
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 148
    invoke-virtual {p0, p2}, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;->createObject(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 149
    iget-object v2, p0, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;->mObjectMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v2, p0, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;->mOrderedObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    monitor-exit v0

    return-object v1

    .line 153
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :try_start_1
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;Lcom/android/launcher3/util/MainThreadInitializedObject;Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 140
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Leaking unknown objects "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;
    .end local p1    # "object":Lcom/android/launcher3/util/MainThreadInitializedObject;, "Lcom/android/launcher3/util/MainThreadInitializedObject<TT;>;"
    .end local p2    # "provider":Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;, "Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider<TT;>;"
    throw v1

    .line 153
    .restart local p0    # "this":Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;
    .restart local p1    # "object":Lcom/android/launcher3/util/MainThreadInitializedObject;, "Lcom/android/launcher3/util/MainThreadInitializedObject<TT;>;"
    .restart local p2    # "provider":Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;, "Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider<TT;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method protected createObject(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 164
    .local p1, "provider":Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;, "Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider<TT;>;"
    invoke-interface {p1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 0

    .line 114
    return-object p0
.end method

.method synthetic lambda$getObject$0$com-android-launcher3-util-MainThreadInitializedObject$SandboxContext(Lcom/android/launcher3/util/MainThreadInitializedObject;Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)Ljava/lang/Object;
    .locals 1
    .param p1, "object"    # Lcom/android/launcher3/util/MainThreadInitializedObject;
    .param p2, "provider"    # Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;->getObject(Lcom/android/launcher3/util/MainThreadInitializedObject;Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 5

    .line 118
    iget-object v0, p0, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;->mDestroyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;->mOrderedObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 121
    iget-object v3, p0, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;->mOrderedObjects:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 122
    .local v3, "o":Ljava/lang/Object;
    instance-of v4, v3, Lcom/android/launcher3/util/SafeCloseable;

    if-eqz v4, :cond_0

    .line 123
    move-object v4, v3

    check-cast v4, Lcom/android/launcher3/util/SafeCloseable;

    invoke-interface {v4}, Lcom/android/launcher3/util/SafeCloseable;->close()V

    .line 120
    .end local v3    # "o":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 126
    .end local v1    # "i":I
    :cond_1
    iput-boolean v2, p0, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;->mDestroyed:Z

    .line 127
    monitor-exit v0

    .line 128
    return-void

    .line 127
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
