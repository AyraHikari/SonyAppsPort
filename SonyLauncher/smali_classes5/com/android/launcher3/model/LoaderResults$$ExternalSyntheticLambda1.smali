.class public final synthetic Lcom/android/launcher3/model/LoaderResults$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;


# instance fields
.field public final synthetic f$0:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/LoaderResults$$ExternalSyntheticLambda1;->f$0:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/model/LoaderResults$$ExternalSyntheticLambda1;->f$0:Ljava/util/HashMap;

    invoke-static {v0, p1}, Lcom/android/launcher3/model/LoaderResults;->lambda$bindDeepShortcuts$0(Ljava/util/HashMap;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method
