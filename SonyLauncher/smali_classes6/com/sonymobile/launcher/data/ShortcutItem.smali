.class public Lcom/sonymobile/launcher/data/ShortcutItem;
.super Lcom/sonymobile/launcher/data/Item;
.source "ShortcutItem.java"


# static fields
.field public static final UNKNOWN_TITLE:Ljava/lang/String; = ""


# instance fields
.field private mIconResourceName:Ljava/lang/String;

.field private mImage:Landroid/graphics/Bitmap;

.field private mImageChecksum:J

.field private mIntent:Landroid/content/Intent;

.field private mIntentUri:Ljava/lang/String;

.field private mLabel:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mPackageResourceName:Ljava/lang/String;

.field private mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Lcom/sonymobile/launcher/data/ShortcutItem;)V
    .locals 4
    .param p1, "other"    # Lcom/sonymobile/launcher/data/ShortcutItem;

    .line 97
    invoke-direct {p0, p1}, Lcom/sonymobile/launcher/data/Item;-><init>(Lcom/sonymobile/launcher/data/Item;)V

    .line 98
    iget-object v0, p1, Lcom/sonymobile/launcher/data/ShortcutItem;->mPackageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/sonymobile/launcher/data/ShortcutItem;->mLabel:Ljava/lang/String;

    iget-object v2, p1, Lcom/sonymobile/launcher/data/ShortcutItem;->mIntent:Landroid/content/Intent;

    iget-object v3, p1, Lcom/sonymobile/launcher/data/ShortcutItem;->mUser:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sonymobile/launcher/data/ShortcutItem;->init(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 99
    iget-object v0, p1, Lcom/sonymobile/launcher/data/ShortcutItem;->mIconResourceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonymobile/launcher/data/ShortcutItem;->mIconResourceName:Ljava/lang/String;

    .line 100
    iget-object v0, p1, Lcom/sonymobile/launcher/data/ShortcutItem;->mPackageResourceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonymobile/launcher/data/ShortcutItem;->mPackageResourceName:Ljava/lang/String;

    .line 101
    iget-object v0, p1, Lcom/sonymobile/launcher/data/ShortcutItem;->mImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/launcher/data/ShortcutItem;->mImage:Landroid/graphics/Bitmap;

    .line 104
    :cond_0
    iget-wide v0, p1, Lcom/sonymobile/launcher/data/ShortcutItem;->mImageChecksum:J

    iput-wide v0, p0, Lcom/sonymobile/launcher/data/ShortcutItem;->mImageChecksum:J

    .line 105
    iget-object v0, p1, Lcom/sonymobile/launcher/data/ShortcutItem;->mUser:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/sonymobile/launcher/data/ShortcutItem;->mUser:Landroid/os/UserHandle;

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .line 87
    invoke-direct {p0}, Lcom/sonymobile/launcher/data/Item;-><init>()V

    .line 88
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonymobile/launcher/data/ShortcutItem;->init(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 89
    return-void
.end method

.method private static createShortcutIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .line 309
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 311
    .local v0, "shortcutIntent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 313
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 314
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 315
    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 317
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 320
    :cond_1
    :goto_0
    return-object v0
.end method

.method private static getClassName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 285
    if-eqz p0, :cond_0

    .line 286
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 287
    .local v0, "comp":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 292
    .end local v0    # "comp":Landroid/content/ComponentName;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getPackageName(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 266
    move-object v0, p0

    .line 268
    .local v0, "tempPackageName":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 269
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 271
    .local v1, "comp":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 272
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 274
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, "intentPackageName":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 277
    move-object v0, v2

    .line 281
    .end local v1    # "comp":Landroid/content/ComponentName;
    .end local v2    # "intentPackageName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "user"    # Landroid/os/UserHandle;

    .line 297
    invoke-static {p1, p3}, Lcom/sonymobile/launcher/data/ShortcutItem;->getPackageName(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/launcher/data/ShortcutItem;->mPackageName:Ljava/lang/String;

    .line 298
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/sonymobile/launcher/data/ShortcutItem;->mLabel:Ljava/lang/String;

    .line 300
    if-eqz p3, :cond_1

    .line 301
    invoke-static {p3}, Lcom/sonymobile/launcher/data/ShortcutItem;->createShortcutIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/launcher/data/ShortcutItem;->mIntent:Landroid/content/Intent;

    .line 302
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/launcher/data/ShortcutItem;->mIntentUri:Ljava/lang/String;

    .line 305
    :cond_1
    iput-object p4, p0, Lcom/sonymobile/launcher/data/ShortcutItem;->mUser:Landroid/os/UserHandle;

    .line 306
    return-void
.end method


# virtual methods
.method public create()Lcom/sonymobile/launcher/data/Item;
    .locals 1

    .line 110
    new-instance v0, Lcom/sonymobile/launcher/data/ShortcutItem;

    invoke-direct {v0, p0}, Lcom/sonymobile/launcher/data/ShortcutItem;-><init>(Lcom/sonymobile/launcher/data/ShortcutItem;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 207
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 208
    return v0

    .line 210
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_6

    .line 214
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/sonymobile/launcher/data/ShortcutItem;

    .line 216
    .local v2, "that":Lcom/sonymobile/launcher/data/ShortcutItem;
    iget-wide v3, p0, Lcom/sonymobile/launcher/data/ShortcutItem;->mImageChecksum:J

    iget-wide v5, v2, Lcom/sonymobile/launcher/data/ShortcutItem;->mImageChecksum:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 217
    return v1

    .line 219
    :cond_2
    iget-object v3, p0, Lcom/sonymobile/launcher/data/ShortcutItem;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v4, v2, Lcom/sonymobile/launcher/data/ShortcutItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_3
    iget-object v3, v2, Lcom/sonymobile/launcher/data/ShortcutItem;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 220
    :goto_0
    return v1

    .line 222
    :cond_4
    iget-object v3, p0, Lcom/sonymobile/launcher/data/ShortcutItem;->mLabel:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v4, v2, Lcom/sonymobile/launcher/data/ShortcutItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_1

    :cond_5
    iget-object v3, v2, Lcom/sonymobile/launcher/data/ShortcutItem;->mLabel:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 223
    :goto_1
    return v1

    .line 225
    :cond_6
    iget-object v3, p0, Lcom/sonymobile/launcher/data/ShortcutItem;->mIntentUri:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v4, v2, Lcom/sonymobile/launcher/data/ShortcutItem;->mIntentUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_2

    :cond_7
    iget-object v3, v2, Lcom/sonymobile/launcher/data/ShortcutItem;->mIntentUri:Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 226
    :goto_2
    return v1

    .line 228
    :cond_8
    iget-object v3, p0, Lcom/sonymobile/launcher/data/ShortcutItem;->mPackageResourceName:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v4, v2, Lcom/sonymobile/launcher/data/ShortcutItem;->mPackageResourceName:Ljava/lang/String;

    .line 229
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_3

    :cond_9
    iget-object v3, v2, Lcom/sonymobile/launcher/data/ShortcutItem;->mPackageResourceName:Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 230
    :goto_3
    return v1

    .line 232
    :cond_a
    iget-object v3, p0, Lcom/sonymobile/launcher/data/ShortcutItem;->mIconResourceName:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v4, v2, Lcom/sonymobile/launcher/data/ShortcutItem;->mIconResourceName:Ljava/lang/String;

    .line 233
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_4

    :cond_b
    iget-object v3, v2, Lcom/sonymobile/launcher/data/ShortcutItem;->mIconResourceName:Ljava/lang/String;

    if-eqz v3, :cond_c

    .line 234
    :goto_4
    return v1

    .line 236
    :cond_c
    iget-object v3, p0, Lcom/sonymobile/launcher/data/ShortcutItem;->mUser:Landroid/os/UserHandle;

    if-eqz v3, :cond_d

    iget-object v0, v2, Lcom/sonymobile/launcher/data/ShortcutItem;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v3, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5

    :cond_d
    iget-object v3, v2, Lcom/sonymobile/launcher/data/ShortcutItem;->mUser:Landroid/os/UserHandle;

    if-nez v3, :cond_e

    goto :goto_5

    :cond_e
    move v0, v1

    :goto_5
    return v0

    .line 211
    .end local v2    # "that":Lcom/sonymobile/launcher/data/ShortcutItem;
    :cond_f
    :goto_6
    return v1
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/sonymobile/launcher/data/ShortcutItem;->mImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/sonymobile/launcher/data/ShortcutItem;->mIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/sonymobile/launcher/data/ShortcutItem;->getClassName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconResourceName()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/sonymobile/launcher/data/ShortcutItem;->mIconResourceName:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/sonymobile/launcher/data/ShortcutItem;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sonymobile/launcher/data/ShortcutItem;->mIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    :goto_0
    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/sonymobile/launcher/data/ShortcutItem;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/sonymobile/launcher/data/ShortcutItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageResourceName()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/sonymobile/launcher/data/ShortcutItem;->mPackageResourceName:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/sonymobile/launcher/data/ShortcutItem;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .line 241
    iget-object v0, p0, Lcom/sonymobile/launcher/data/ShortcutItem;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 242
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/sonymobile/launcher/data/ShortcutItem;->mLabel:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    add-int/2addr v2, v3

    .line 243
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lcom/sonymobile/launcher/data/ShortcutItem;->mIntentUri:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    add-int/2addr v0, v3

    .line 244
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-wide v3, p0, Lcom/sonymobile/launcher/data/ShortcutItem;->mImageChecksum:J

    const/16 v5, 0x20

    ushr-long v5, v3, v5

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v2, v3

    .line 245
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lcom/sonymobile/launcher/data/ShortcutItem;->mIconResourceName:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3

    :cond_3
    move v3, v1

    :goto_3
    add-int/2addr v0, v3

    .line 246
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/sonymobile/launcher/data/ShortcutItem;->mUser:Landroid/os/UserHandle;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/os/UserHandle;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v2, v1

    .line 247
    .end local v0    # "result":I
    .restart local v2    # "result":I
    return v2
.end method

.method public setShortcutData(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "packageResourceName"    # Ljava/lang/String;
    .param p3, "iconResourceName"    # Ljava/lang/String;

    .line 122
    iput-object p1, p0, Lcom/sonymobile/launcher/data/ShortcutItem;->mImage:Landroid/graphics/Bitmap;

    .line 123
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/sonymobile/launcher/util/BitmapUtils;->computeBitmapChecksum(Landroid/graphics/Bitmap;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lcom/sonymobile/launcher/data/ShortcutItem;->mImageChecksum:J

    .line 124
    iput-object p2, p0, Lcom/sonymobile/launcher/data/ShortcutItem;->mPackageResourceName:Ljava/lang/String;

    .line 125
    iput-object p3, p0, Lcom/sonymobile/launcher/data/ShortcutItem;->mIconResourceName:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setShortcutData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageResourceName"    # Ljava/lang/String;
    .param p2, "iconResourceName"    # Ljava/lang/String;

    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/sonymobile/launcher/data/ShortcutItem;->setShortcutData(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/sonymobile/launcher/data/Item;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nlabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/launcher/data/ShortcutItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/launcher/data/ShortcutItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nintent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/launcher/data/ShortcutItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\npackageResourceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/launcher/data/ShortcutItem;->mPackageResourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iconResourceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/launcher/data/ShortcutItem;->mIconResourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
