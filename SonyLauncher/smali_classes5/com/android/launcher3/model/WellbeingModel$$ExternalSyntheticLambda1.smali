.class public final synthetic Lcom/android/launcher3/model/WellbeingModel$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/model/WellbeingModel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/WellbeingModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/WellbeingModel$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/model/WellbeingModel;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/model/WellbeingModel$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/model/WellbeingModel;

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/model/WellbeingModel;->lambda$onInitialized$0$com-android-launcher3-model-WellbeingModel(Landroid/content/Intent;)V

    return-void
.end method
