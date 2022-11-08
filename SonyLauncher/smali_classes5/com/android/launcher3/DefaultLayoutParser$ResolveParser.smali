.class public Lcom/android/launcher3/DefaultLayoutParser$ResolveParser;
.super Ljava/lang/Object;
.source "DefaultLayoutParser.java"

# interfaces
.implements Lcom/android/launcher3/AutoInstallsLayout$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/DefaultLayoutParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResolveParser"
.end annotation


# instance fields
.field private final mChildParser:Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;

.field final synthetic this$0:Lcom/android/launcher3/DefaultLayoutParser;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/DefaultLayoutParser;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/launcher3/DefaultLayoutParser;

    .line 242
    iput-object p1, p0, Lcom/android/launcher3/DefaultLayoutParser$ResolveParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    new-instance v0, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;

    invoke-direct {v0, p1}, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;-><init>(Lcom/android/launcher3/DefaultLayoutParser;)V

    iput-object v0, p0, Lcom/android/launcher3/DefaultLayoutParser$ResolveParser;->mChildParser:Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;

    return-void
.end method


# virtual methods
.method public parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 251
    .local v0, "groupDepth":I
    const/4 v1, -0x1

    .line 252
    .local v1, "addedId":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    .line 253
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v0, :cond_1

    goto :goto_1

    .line 265
    :cond_1
    return v1

    .line 254
    :cond_2
    :goto_1
    const/4 v2, 0x2

    if-ne v3, v2, :cond_0

    const/4 v2, -0x1

    if-le v1, v2, :cond_3

    .line 255
    goto :goto_0

    .line 257
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, "fallback_item_name":Ljava/lang/String;
    const-string v4, "favorite"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 259
    iget-object v4, p0, Lcom/android/launcher3/DefaultLayoutParser$ResolveParser;->mChildParser:Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;

    invoke-virtual {v4, p1}, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;->parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v1

    goto :goto_2

    .line 261
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fallback groups can contain only favorites, found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DefaultLayoutParser"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .end local v2    # "fallback_item_name":Ljava/lang/String;
    :goto_2
    goto :goto_0
.end method
