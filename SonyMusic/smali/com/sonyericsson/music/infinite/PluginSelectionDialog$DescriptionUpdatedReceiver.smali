.class Lcom/sonyericsson/music/infinite/PluginSelectionDialog$DescriptionUpdatedReceiver;
.super Lcom/sonyericsson/music/infinite/DescriptionReceiver;
.source "PluginSelectionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/infinite/PluginSelectionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DescriptionUpdatedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/infinite/PluginSelectionDialog;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/music/infinite/PluginSelectionDialog;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/sonyericsson/music/infinite/PluginSelectionDialog$DescriptionUpdatedReceiver;->this$0:Lcom/sonyericsson/music/infinite/PluginSelectionDialog;

    invoke-direct {p0}, Lcom/sonyericsson/music/infinite/DescriptionReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/music/infinite/PluginSelectionDialog;Lcom/sonyericsson/music/infinite/PluginSelectionDialog$1;)V
    .locals 0

    .line 302
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/infinite/PluginSelectionDialog$DescriptionUpdatedReceiver;-><init>(Lcom/sonyericsson/music/infinite/PluginSelectionDialog;)V

    return-void
.end method


# virtual methods
.method protected onDescriptionReceived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/sonyericsson/music/infinite/PluginSelectionDialog$DescriptionUpdatedReceiver;->this$0:Lcom/sonyericsson/music/infinite/PluginSelectionDialog;

    invoke-static {v0}, Lcom/sonyericsson/music/infinite/PluginSelectionDialog;->access$200(Lcom/sonyericsson/music/infinite/PluginSelectionDialog;)Lcom/sonyericsson/music/infinite/PluginSelectionDialog$PluginListAdapter;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/sonyericsson/music/infinite/PluginSelectionDialog$PluginListAdapter;->access$300(Lcom/sonyericsson/music/infinite/PluginSelectionDialog$PluginListAdapter;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
