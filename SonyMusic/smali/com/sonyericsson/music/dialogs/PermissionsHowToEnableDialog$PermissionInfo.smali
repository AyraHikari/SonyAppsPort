.class public Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog$PermissionInfo;
.super Ljava/lang/Object;
.source "PermissionsHowToEnableDialog.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionInfo"
.end annotation


# instance fields
.field final mDescriptionId:I

.field final mPermission:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p1, p0, Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog$PermissionInfo;->mPermission:Ljava/lang/String;

    .line 172
    iput p2, p0, Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog$PermissionInfo;->mDescriptionId:I

    return-void
.end method
