.class public Lcom/android/launcher3/util/Executors$SimpleThreadFactory;
.super Ljava/lang/Object;
.source "Executors.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/Executors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleThreadFactory"
.end annotation


# instance fields
.field private final mCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mNamePrefix:Ljava/lang/String;

.field private final mPriority:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "namePrefix"    # Ljava/lang/String;
    .param p2, "priority"    # I

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/util/Executors$SimpleThreadFactory;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 105
    iput-object p1, p0, Lcom/android/launcher3/util/Executors$SimpleThreadFactory;->mNamePrefix:Ljava/lang/String;

    .line 106
    iput p2, p0, Lcom/android/launcher3/util/Executors$SimpleThreadFactory;->mPriority:I

    .line 107
    return-void
.end method


# virtual methods
.method synthetic lambda$newThread$0$com-android-launcher3-util-Executors$SimpleThreadFactory(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 112
    iget v0, p0, Lcom/android/launcher3/util/Executors$SimpleThreadFactory;->mPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 113
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 114
    return-void
.end method

.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 4
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 111
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/launcher3/util/Executors$SimpleThreadFactory$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/util/Executors$SimpleThreadFactory$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/util/Executors$SimpleThreadFactory;Ljava/lang/Runnable;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/launcher3/util/Executors$SimpleThreadFactory;->mNamePrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/util/Executors$SimpleThreadFactory;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 114
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 115
    .local v0, "t":Ljava/lang/Thread;
    return-object v0
.end method
