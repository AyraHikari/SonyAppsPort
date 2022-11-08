.class public final synthetic Lcom/android/launcher3/util/Executors$SimpleThreadFactory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/util/Executors$SimpleThreadFactory;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/Executors$SimpleThreadFactory;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/Executors$SimpleThreadFactory$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/util/Executors$SimpleThreadFactory;

    iput-object p2, p0, Lcom/android/launcher3/util/Executors$SimpleThreadFactory$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/util/Executors$SimpleThreadFactory$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/util/Executors$SimpleThreadFactory;

    iget-object v1, p0, Lcom/android/launcher3/util/Executors$SimpleThreadFactory$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/Executors$SimpleThreadFactory;->lambda$newThread$0$com-android-launcher3-util-Executors$SimpleThreadFactory(Ljava/lang/Runnable;)V

    return-void
.end method
