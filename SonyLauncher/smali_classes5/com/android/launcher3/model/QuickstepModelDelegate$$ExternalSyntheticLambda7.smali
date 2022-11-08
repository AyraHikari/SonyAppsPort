.class public final synthetic Lcom/android/launcher3/model/QuickstepModelDelegate$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/model/QuickstepModelDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/QuickstepModelDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$$ExternalSyntheticLambda7;->f$0:Lcom/android/launcher3/model/QuickstepModelDelegate;

    return-void
.end method


# virtual methods
.method public final onPullAtom(ILjava/util/List;)I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$$ExternalSyntheticLambda7;->f$0:Lcom/android/launcher3/model/QuickstepModelDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/model/QuickstepModelDelegate;->lambda$registerSnapshotLoggingCallback$0$com-android-launcher3-model-QuickstepModelDelegate(ILjava/util/List;)I

    move-result p1

    return p1
.end method
