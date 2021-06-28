.class abstract Lcom/sonyericsson/music/ViewRequestController$IntentHandler;
.super Ljava/lang/Object;
.source "ViewRequestController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/ViewRequestController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "IntentHandler"
.end annotation


# instance fields
.field final mActivity:Lcom/sonyericsson/music/MusicActivity;

.field final mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/music/MusicActivity;Landroid/content/Intent;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p2, p0, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->mIntent:Landroid/content/Intent;

    .line 57
    iput-object p1, p0, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    return-void
.end method


# virtual methods
.method abstract runIntent()V
.end method
