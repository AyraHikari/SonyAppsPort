.class Lcom/sonyericsson/music/library/CloudAdapter$1;
.super Ljava/lang/Object;
.source "CloudAdapter.java"

# interfaces
.implements Lcom/sonyericsson/music/library/CloudAdapter$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/library/CloudAdapter;-><init>(Lcom/sonyericsson/music/library/CloudAdapter$CloudListener;Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/library/CloudAdapter;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/library/CloudAdapter;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/sonyericsson/music/library/CloudAdapter$1;->this$0:Lcom/sonyericsson/music/library/CloudAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/sonyericsson/music/library/CloudAdapter$1;->this$0:Lcom/sonyericsson/music/library/CloudAdapter;

    invoke-static {v0}, Lcom/sonyericsson/music/library/CloudAdapter;->access$000(Lcom/sonyericsson/music/library/CloudAdapter;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/library/CloudAdapter$1;->this$0:Lcom/sonyericsson/music/library/CloudAdapter;

    invoke-static {v0}, Lcom/sonyericsson/music/library/CloudAdapter;->access$000(Lcom/sonyericsson/music/library/CloudAdapter;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 87
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudAdapter$1;->this$0:Lcom/sonyericsson/music/library/CloudAdapter;

    invoke-static {p1}, Lcom/sonyericsson/music/library/CloudAdapter;->access$200(Lcom/sonyericsson/music/library/CloudAdapter;)Lcom/sonyericsson/music/library/CloudAdapter$CloudListener;

    move-result-object p1

    new-instance v0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;

    iget-object v1, p0, Lcom/sonyericsson/music/library/CloudAdapter$1;->this$0:Lcom/sonyericsson/music/library/CloudAdapter;

    invoke-static {v1}, Lcom/sonyericsson/music/library/CloudAdapter;->access$000(Lcom/sonyericsson/music/library/CloudAdapter;)Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;-><init>(Landroid/database/Cursor;)V

    iget-object v1, p0, Lcom/sonyericsson/music/library/CloudAdapter$1;->this$0:Lcom/sonyericsson/music/library/CloudAdapter;

    invoke-static {v1}, Lcom/sonyericsson/music/library/CloudAdapter;->access$100(Lcom/sonyericsson/music/library/CloudAdapter;)I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/music/library/CloudAdapter$1;->this$0:Lcom/sonyericsson/music/library/CloudAdapter;

    invoke-static {v2}, Lcom/sonyericsson/music/library/CloudAdapter;->access$000(Lcom/sonyericsson/music/library/CloudAdapter;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lcom/sonyericsson/music/library/CloudAdapter$CloudListener;->onClick(Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;II)V

    :cond_0
    return-void
.end method

.method public onDownloadClick(I)V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/sonyericsson/music/library/CloudAdapter$1;->this$0:Lcom/sonyericsson/music/library/CloudAdapter;

    invoke-static {v0}, Lcom/sonyericsson/music/library/CloudAdapter;->access$000(Lcom/sonyericsson/music/library/CloudAdapter;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/library/CloudAdapter$1;->this$0:Lcom/sonyericsson/music/library/CloudAdapter;

    invoke-static {v0}, Lcom/sonyericsson/music/library/CloudAdapter;->access$000(Lcom/sonyericsson/music/library/CloudAdapter;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudAdapter$1;->this$0:Lcom/sonyericsson/music/library/CloudAdapter;

    invoke-static {p1}, Lcom/sonyericsson/music/library/CloudAdapter;->access$200(Lcom/sonyericsson/music/library/CloudAdapter;)Lcom/sonyericsson/music/library/CloudAdapter$CloudListener;

    move-result-object p1

    new-instance v0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;

    iget-object v1, p0, Lcom/sonyericsson/music/library/CloudAdapter$1;->this$0:Lcom/sonyericsson/music/library/CloudAdapter;

    invoke-static {v1}, Lcom/sonyericsson/music/library/CloudAdapter;->access$000(Lcom/sonyericsson/music/library/CloudAdapter;)Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;-><init>(Landroid/database/Cursor;)V

    invoke-interface {p1, v0}, Lcom/sonyericsson/music/library/CloudAdapter$CloudListener;->onDownloadClick(Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;)V

    :cond_0
    return-void
.end method
