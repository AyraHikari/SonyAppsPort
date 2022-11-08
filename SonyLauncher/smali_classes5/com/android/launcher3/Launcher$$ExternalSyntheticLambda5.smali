.class public final synthetic Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/Launcher;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Landroid/content/Intent;

.field public final synthetic f$3:Lcom/android/launcher3/model/data/ItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/Launcher;Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda5;->f$0:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda5;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda5;->f$2:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda5;->f$3:Lcom/android/launcher3/model/data/ItemInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda5;->f$0:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda5;->f$1:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda5;->f$2:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda5;->f$3:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/Launcher;->lambda$startActivitySafely$6$com-android-launcher3-Launcher(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method
