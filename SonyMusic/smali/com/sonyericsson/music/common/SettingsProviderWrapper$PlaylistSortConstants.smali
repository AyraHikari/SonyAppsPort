.class public final Lcom/sonyericsson/music/common/SettingsProviderWrapper$PlaylistSortConstants;
.super Ljava/lang/Object;
.source "SettingsProviderWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/common/SettingsProviderWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaylistSortConstants"
.end annotation


# static fields
.field public static final KEY_PREF_PLAYLIST_SORT_ORDER:Ljava/lang/String; = "pref_key_playlist_sort_order"

.field public static final PLAYLIST_SORT_ORDER_NOT_SET:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onUpgrade(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method
