.class Landroidx/slice/SliceUtils$2;
.super Ljava/lang/Object;
.source "SliceUtils.java"

# interfaces
.implements Landroidx/slice/SliceItem$ActionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/slice/SliceUtils;->parseSlice(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;Landroidx/slice/SliceUtils$SliceActionListener;)Landroidx/slice/Slice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroidx/slice/SliceUtils$SliceActionListener;


# direct methods
.method constructor <init>(Landroidx/slice/SliceUtils$SliceActionListener;)V
    .locals 0

    .line 278
    iput-object p1, p0, Landroidx/slice/SliceUtils$2;->val$listener:Landroidx/slice/SliceUtils$SliceActionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(Landroidx/slice/SliceItem;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "item"    # Landroidx/slice/SliceItem;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "intent"    # Landroid/content/Intent;

    .line 281
    iget-object v0, p0, Landroidx/slice/SliceUtils$2;->val$listener:Landroidx/slice/SliceUtils$SliceActionListener;

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroidx/slice/SliceUtils$SliceActionListener;->onSliceAction(Landroid/net/Uri;Landroid/content/Context;Landroid/content/Intent;)V

    .line 282
    return-void
.end method
