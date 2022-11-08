.class public final synthetic Lcom/android/launcher3/DeleteDropTarget$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/DeleteDropTarget;

.field public final synthetic f$1:Lcom/android/launcher3/util/IntSet;

.field public final synthetic f$2:Lcom/android/launcher3/model/ModelWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/DeleteDropTarget;Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/model/ModelWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/DeleteDropTarget$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/DeleteDropTarget;

    iput-object p2, p0, Lcom/android/launcher3/DeleteDropTarget$$ExternalSyntheticLambda0;->f$1:Lcom/android/launcher3/util/IntSet;

    iput-object p3, p0, Lcom/android/launcher3/DeleteDropTarget$$ExternalSyntheticLambda0;->f$2:Lcom/android/launcher3/model/ModelWriter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/DeleteDropTarget$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/DeleteDropTarget;

    iget-object v1, p0, Lcom/android/launcher3/DeleteDropTarget$$ExternalSyntheticLambda0;->f$1:Lcom/android/launcher3/util/IntSet;

    iget-object v2, p0, Lcom/android/launcher3/DeleteDropTarget$$ExternalSyntheticLambda0;->f$2:Lcom/android/launcher3/model/ModelWriter;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/DeleteDropTarget;->lambda$completeDrop$0$com-android-launcher3-DeleteDropTarget(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/model/ModelWriter;)V

    return-void
.end method
