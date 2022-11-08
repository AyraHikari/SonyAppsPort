.class public final synthetic Lcom/android/launcher3/model/WellbeingModel$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/model/WellbeingModel;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/WellbeingModel;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/WellbeingModel$$ExternalSyntheticLambda8;->f$0:Lcom/android/launcher3/model/WellbeingModel;

    iput p2, p0, Lcom/android/launcher3/model/WellbeingModel$$ExternalSyntheticLambda8;->f$1:I

    iput-object p3, p0, Lcom/android/launcher3/model/WellbeingModel$$ExternalSyntheticLambda8;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/model/WellbeingModel$$ExternalSyntheticLambda8;->f$0:Lcom/android/launcher3/model/WellbeingModel;

    iget v1, p0, Lcom/android/launcher3/model/WellbeingModel$$ExternalSyntheticLambda8;->f$1:I

    iget-object v2, p0, Lcom/android/launcher3/model/WellbeingModel$$ExternalSyntheticLambda8;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/model/WellbeingModel;->lambda$updateActionsWithRetry$3$com-android-launcher3-model-WellbeingModel(ILjava/lang/String;)V

    return-void
.end method
