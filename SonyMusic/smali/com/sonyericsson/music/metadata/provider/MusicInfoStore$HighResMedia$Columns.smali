.class public Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Columns;
.super Ljava/lang/Object;
.source "MusicInfoStore.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Columns"
.end annotation


# static fields
.field public static final DATE_ADDED:Ljava/lang/String; = "date_added"

.field public static final PATH:Ljava/lang/String; = "path"

.field public static final SOURCE:Ljava/lang/String; = "source"

.field public static final SOURCE_ID:Ljava/lang/String; = "source_id"

.field public static final TYPE:Ljava/lang/String; = "type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 683
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
