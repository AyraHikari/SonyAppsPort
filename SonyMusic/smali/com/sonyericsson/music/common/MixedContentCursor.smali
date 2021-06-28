.class public interface abstract Lcom/sonyericsson/music/common/MixedContentCursor;
.super Ljava/lang/Object;
.source "MixedContentCursor.java"

# interfaces
.implements Landroid/database/Cursor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/common/MixedContentCursor$CursorType;,
        Lcom/sonyericsson/music/common/MixedContentCursor$ContentType;
    }
.end annotation


# virtual methods
.method public abstract getCursorType()Lcom/sonyericsson/music/common/MixedContentCursor$CursorType;
.end method

.method public abstract getItemContentType()Lcom/sonyericsson/music/common/MixedContentCursor$ContentType;
.end method
