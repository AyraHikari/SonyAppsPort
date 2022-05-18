.class public Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudAccounts$Columns;
.super Ljava/lang/Object;
.source "MusicInfoStore.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudAccounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Columns"
.end annotation


# static fields
.field public static final LAST_SYNC_DATE:Ljava/lang/String; = "last_sync_date"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final SERVICE_ID:Ljava/lang/String; = "service_id"

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final SYNC_STATE:Ljava/lang/String; = "sync_state"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
