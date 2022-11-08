.class public final synthetic Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/util/RunnableList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/RunnableList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder$$ExternalSyntheticLambda5;->f$0:Lcom/android/launcher3/util/RunnableList;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder$$ExternalSyntheticLambda5;->f$0:Lcom/android/launcher3/util/RunnableList;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    return-void
.end method
