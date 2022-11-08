.class public final synthetic Lcom/android/launcher3/views/AppLauncher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/views/AppLauncher;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Landroid/content/Intent;

.field public final synthetic f$3:Lcom/android/launcher3/model/data/ItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/views/AppLauncher;Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/views/AppLauncher$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/views/AppLauncher;

    iput-object p2, p0, Lcom/android/launcher3/views/AppLauncher$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/views/AppLauncher$$ExternalSyntheticLambda0;->f$2:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/launcher3/views/AppLauncher$$ExternalSyntheticLambda0;->f$3:Lcom/android/launcher3/model/data/ItemInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/views/AppLauncher$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/views/AppLauncher;

    iget-object v1, p0, Lcom/android/launcher3/views/AppLauncher$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher3/views/AppLauncher$$ExternalSyntheticLambda0;->f$2:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/launcher3/views/AppLauncher$$ExternalSyntheticLambda0;->f$3:Lcom/android/launcher3/model/data/ItemInfo;

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/views/AppLauncher;->lambda$startActivitySafely$0(Lcom/android/launcher3/views/AppLauncher;Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/DialogInterface;I)V

    return-void
.end method
