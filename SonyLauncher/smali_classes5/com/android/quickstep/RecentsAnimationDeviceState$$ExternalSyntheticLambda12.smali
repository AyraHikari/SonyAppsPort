.class public final synthetic Lcom/android/quickstep/RecentsAnimationDeviceState$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/util/SettingsCache;

.field public final synthetic f$1:Landroid/net/Uri;

.field public final synthetic f$2:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/SettingsCache;Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState$$ExternalSyntheticLambda12;->f$0:Lcom/android/launcher3/util/SettingsCache;

    iput-object p2, p0, Lcom/android/quickstep/RecentsAnimationDeviceState$$ExternalSyntheticLambda12;->f$1:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/quickstep/RecentsAnimationDeviceState$$ExternalSyntheticLambda12;->f$2:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState$$ExternalSyntheticLambda12;->f$0:Lcom/android/launcher3/util/SettingsCache;

    iget-object v1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState$$ExternalSyntheticLambda12;->f$1:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/quickstep/RecentsAnimationDeviceState$$ExternalSyntheticLambda12;->f$2:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    invoke-static {v0, v1, v2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->lambda$new$7(Lcom/android/launcher3/util/SettingsCache;Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method
