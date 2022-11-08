.class public final synthetic Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda26;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda26;->f$0:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    invoke-static {v0, p1}, Lcom/android/launcher3/Launcher;->lambda$onProvideKeyboardShortcuts$15(Ljava/util/ArrayList;Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;)V

    return-void
.end method
