.class Lcom/sonyericsson/music/library/FolderAdapter$IndexCache;
.super Ljava/lang/Object;
.source "FolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/FolderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IndexCache"
.end annotation


# instance fields
.field albumNameColIndex:I

.field artistNameColIndex:I

.field trackIdColIndex:I

.field trackNameColIndex:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/music/library/FolderAdapter$1;)V
    .locals 0

    .line 164
    invoke-direct {p0}, Lcom/sonyericsson/music/library/FolderAdapter$IndexCache;-><init>()V

    return-void
.end method
