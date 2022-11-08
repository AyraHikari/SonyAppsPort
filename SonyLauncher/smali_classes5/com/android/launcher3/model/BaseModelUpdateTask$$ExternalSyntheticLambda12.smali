.class public final synthetic Lcom/android/launcher3/model/BaseModelUpdateTask$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;


# instance fields
.field public final synthetic f$0:[Lcom/android/launcher3/model/data/AppInfo;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>([Lcom/android/launcher3/model/data/AppInfo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/BaseModelUpdateTask$$ExternalSyntheticLambda12;->f$0:[Lcom/android/launcher3/model/data/AppInfo;

    iput p2, p0, Lcom/android/launcher3/model/BaseModelUpdateTask$$ExternalSyntheticLambda12;->f$1:I

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/model/BaseModelUpdateTask$$ExternalSyntheticLambda12;->f$0:[Lcom/android/launcher3/model/data/AppInfo;

    iget v1, p0, Lcom/android/launcher3/model/BaseModelUpdateTask$$ExternalSyntheticLambda12;->f$1:I

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/model/BaseModelUpdateTask;->lambda$bindApplicationsIfNeeded$8([Lcom/android/launcher3/model/data/AppInfo;ILcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method
