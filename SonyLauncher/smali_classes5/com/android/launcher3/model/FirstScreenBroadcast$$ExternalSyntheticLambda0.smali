.class public final synthetic Lcom/android/launcher3/model/FirstScreenBroadcast$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/FirstScreenBroadcast$$ExternalSyntheticLambda0;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/model/FirstScreenBroadcast$$ExternalSyntheticLambda0;->f$0:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/launcher3/model/FirstScreenBroadcast;->lambda$cloneOnMainThread$2(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
