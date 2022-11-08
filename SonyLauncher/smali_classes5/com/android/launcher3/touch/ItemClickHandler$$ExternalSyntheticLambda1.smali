.class public final synthetic Lcom/android/launcher3/touch/ItemClickHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/Launcher;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/Launcher;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/touch/ItemClickHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/touch/ItemClickHandler$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/launcher3/touch/ItemClickHandler$$ExternalSyntheticLambda1;->f$2:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/touch/ItemClickHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/touch/ItemClickHandler$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher3/touch/ItemClickHandler$$ExternalSyntheticLambda1;->f$2:Landroid/os/UserHandle;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/launcher3/touch/ItemClickHandler;->lambda$onClickPendingAppItem$1(Lcom/android/launcher3/Launcher;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/DialogInterface;I)V

    return-void
.end method
