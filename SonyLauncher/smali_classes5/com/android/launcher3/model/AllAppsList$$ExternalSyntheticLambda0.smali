.class public final synthetic Lcom/android/launcher3/model/AllAppsList$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/launcher3/util/SafeCloseable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/model/AllAppsList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/AllAppsList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/AllAppsList$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/model/AllAppsList;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/model/AllAppsList$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/model/AllAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/model/AllAppsList;->lambda$trackRemoves$1$com-android-launcher3-model-AllAppsList()V

    return-void
.end method
