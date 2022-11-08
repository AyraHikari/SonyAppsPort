.class public final synthetic Lcom/android/quickstep/FallbackSwipeHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/FallbackSwipeHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/FallbackSwipeHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/FallbackSwipeHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/quickstep/FallbackSwipeHandler;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/FallbackSwipeHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/quickstep/FallbackSwipeHandler;

    check-cast p1, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/FallbackSwipeHandler;->lambda$new$0$com-android-quickstep-FallbackSwipeHandler(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void
.end method
