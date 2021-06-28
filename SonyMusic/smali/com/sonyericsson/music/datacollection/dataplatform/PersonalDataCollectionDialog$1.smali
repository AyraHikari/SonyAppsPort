.class Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionDialog$1;
.super Ljava/lang/Object;
.source "PersonalDataCollectionDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionDialog;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionDialog$1;->this$0:Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 78
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
