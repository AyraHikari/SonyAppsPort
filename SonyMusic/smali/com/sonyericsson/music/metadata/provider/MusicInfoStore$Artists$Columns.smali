.class public Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Artists$Columns;
.super Ljava/lang/Object;
.source "MusicInfoStore.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Artists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Columns"
.end annotation


# static fields
.field public static final ARTIST:Ljava/lang/String; = "artist"

.field public static final ART_PATH:Ljava/lang/String; = "art_path"

.field public static final ART_SOURCE:Ljava/lang/String; = "art_source"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
