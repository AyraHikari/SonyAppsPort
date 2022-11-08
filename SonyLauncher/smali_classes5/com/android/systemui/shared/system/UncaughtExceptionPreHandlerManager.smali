.class public final Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;
.super Ljava/lang/Object;
.source "UncaughtExceptionPreHandlerManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager$GlobalUncaughtExceptionHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUncaughtExceptionPreHandlerManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UncaughtExceptionPreHandlerManager.kt\ncom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,71:1\n1#2:72\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0013B\u0007\u0008\u0007\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0007H\u0002J\u0008\u0010\u000b\u001a\u00020\tH\u0002J\u001a\u0010\u000c\u001a\u00020\t2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010J\u000e\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0007R\u0012\u0010\u0003\u001a\u00060\u0004R\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;",
        "",
        "()V",
        "globalUncaughtExceptionPreHandler",
        "Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager$GlobalUncaughtExceptionHandler;",
        "handlers",
        "",
        "Ljava/lang/Thread$UncaughtExceptionHandler;",
        "addHandler",
        "",
        "it",
        "checkGlobalHandlerSetup",
        "handleUncaughtException",
        "thread",
        "Ljava/lang/Thread;",
        "throwable",
        "",
        "registerHandler",
        "handler",
        "GlobalUncaughtExceptionHandler",
        "frameworks__base__packages__SystemUI__shared__android_common__SystemUISharedLib"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final globalUncaughtExceptionPreHandler:Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager$GlobalUncaughtExceptionHandler;

.field private final handlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Thread$UncaughtExceptionHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;->handlers:Ljava/util/List;

    .line 16
    new-instance v0, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager$GlobalUncaughtExceptionHandler;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager$GlobalUncaughtExceptionHandler;-><init>(Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;)V

    iput-object v0, p0, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;->globalUncaughtExceptionPreHandler:Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager$GlobalUncaughtExceptionHandler;

    .line 14
    return-void
.end method

.method private final addHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 1
    .param p1, "it"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 45
    iget-object v0, p0, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;->handlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;->handlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_0
    return-void
.end method

.method private final checkGlobalHandlerSetup()V
    .locals 3

    .line 31
    invoke-static {}, Ljava/lang/Thread;->getUncaughtExceptionPreHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 32
    .local v0, "currentHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    iget-object v1, p0, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;->globalUncaughtExceptionPreHandler:Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager$GlobalUncaughtExceptionHandler;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 33
    instance-of v1, v0, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager$GlobalUncaughtExceptionHandler;

    if-nez v1, :cond_1

    .line 36
    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 72
    .local v1, "it":Ljava/lang/Thread$UncaughtExceptionHandler;
    const/4 v2, 0x0

    .line 36
    .local v2, "$i$a$-let-UncaughtExceptionPreHandlerManager$checkGlobalHandlerSetup$1":I
    invoke-direct {p0, v1}, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;->addHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 37
    .end local v1    # "it":Ljava/lang/Thread$UncaughtExceptionHandler;
    .end local v2    # "$i$a$-let-UncaughtExceptionPreHandlerManager$checkGlobalHandlerSetup$1":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;->globalUncaughtExceptionPreHandler:Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager$GlobalUncaughtExceptionHandler;

    check-cast v1, Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v1}, Ljava/lang/Thread;->setUncaughtExceptionPreHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_1

    .line 34
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Two UncaughtExceptionPreHandlerManagers created"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 39
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public final handleUncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 54
    iget-object v0, p0, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;->handlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 55
    .local v1, "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    nop

    .line 56
    :try_start_0
    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v2

    .line 58
    .local v2, "e":Ljava/lang/Exception;
    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    const-string v4, "Uncaught exception pre-handler error"

    invoke-static {v4, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 61
    .end local v1    # "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public final registerHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 1
    .param p1, "handler"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;->checkGlobalHandlerSetup()V

    .line 24
    invoke-direct {p0, p1}, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;->addHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 25
    return-void
.end method
