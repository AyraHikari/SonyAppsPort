.class public final synthetic Lcom/android/launcher3/LauncherAnimationRunner$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/LauncherAnimationRunner;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:I

.field public final synthetic f$3:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final synthetic f$4:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final synthetic f$5:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/LauncherAnimationRunner;Ljava/lang/Runnable;I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/LauncherAnimationRunner$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/LauncherAnimationRunner;

    iput-object p2, p0, Lcom/android/launcher3/LauncherAnimationRunner$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Runnable;

    iput p3, p0, Lcom/android/launcher3/LauncherAnimationRunner$$ExternalSyntheticLambda1;->f$2:I

    iput-object p4, p0, Lcom/android/launcher3/LauncherAnimationRunner$$ExternalSyntheticLambda1;->f$3:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iput-object p5, p0, Lcom/android/launcher3/LauncherAnimationRunner$$ExternalSyntheticLambda1;->f$4:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iput-object p6, p0, Lcom/android/launcher3/LauncherAnimationRunner$$ExternalSyntheticLambda1;->f$5:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/LauncherAnimationRunner;

    iget-object v1, p0, Lcom/android/launcher3/LauncherAnimationRunner$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/launcher3/LauncherAnimationRunner$$ExternalSyntheticLambda1;->f$2:I

    iget-object v3, p0, Lcom/android/launcher3/LauncherAnimationRunner$$ExternalSyntheticLambda1;->f$3:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v4, p0, Lcom/android/launcher3/LauncherAnimationRunner$$ExternalSyntheticLambda1;->f$4:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v5, p0, Lcom/android/launcher3/LauncherAnimationRunner$$ExternalSyntheticLambda1;->f$5:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/LauncherAnimationRunner;->lambda$onAnimationStart$2$com-android-launcher3-LauncherAnimationRunner(Ljava/lang/Runnable;I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    return-void
.end method
