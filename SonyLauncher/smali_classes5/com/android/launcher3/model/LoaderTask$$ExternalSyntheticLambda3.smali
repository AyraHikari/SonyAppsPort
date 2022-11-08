.class public final synthetic Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/model/LoaderTask;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/LoaderTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda3;->f$0:Lcom/android/launcher3/model/LoaderTask;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda3;->f$0:Lcom/android/launcher3/model/LoaderTask;

    check-cast p1, Lcom/android/launcher3/model/data/IconRequestInfo;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/model/LoaderTask;->lambda$loadAllApps$2$com-android-launcher3-model-LoaderTask(Lcom/android/launcher3/model/data/IconRequestInfo;)V

    return-void
.end method
