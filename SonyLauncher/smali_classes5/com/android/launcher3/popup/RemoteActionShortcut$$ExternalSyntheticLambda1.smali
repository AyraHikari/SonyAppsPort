.class public final synthetic Lcom/android/launcher3/popup/RemoteActionShortcut$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/popup/RemoteActionShortcut;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/popup/RemoteActionShortcut;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/RemoteActionShortcut$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/popup/RemoteActionShortcut;

    iput-object p2, p0, Lcom/android/launcher3/popup/RemoteActionShortcut$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    iget-object v0, p0, Lcom/android/launcher3/popup/RemoteActionShortcut$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/popup/RemoteActionShortcut;

    iget-object v1, p0, Lcom/android/launcher3/popup/RemoteActionShortcut$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/popup/RemoteActionShortcut;->lambda$onClick$0$com-android-launcher3-popup-RemoteActionShortcut(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
