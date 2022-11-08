.class Lcom/android/launcher3/Launcher$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Lcom/android/systemui/plugins/shared/LauncherOverlayManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Launcher;->getDefaultOverlay()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/Launcher;

    .line 576
    iput-object p1, p0, Lcom/android/launcher3/Launcher$1;->this$0:Lcom/android/launcher3/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
