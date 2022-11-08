.class public final synthetic Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/Launcher;

.field public final synthetic f$1:Lcom/android/systemui/plugins/LauncherOverlayPlugin;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/systemui/plugins/LauncherOverlayPlugin;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda9;->f$0:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda9;->f$1:Lcom/android/systemui/plugins/LauncherOverlayPlugin;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda9;->f$0:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda9;->f$1:Lcom/android/systemui/plugins/LauncherOverlayPlugin;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->lambda$onPluginConnected$2$com-android-launcher3-Launcher(Lcom/android/systemui/plugins/LauncherOverlayPlugin;)Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object v0

    return-object v0
.end method
